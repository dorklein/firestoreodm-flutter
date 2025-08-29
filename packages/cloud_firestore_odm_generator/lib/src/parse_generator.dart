// Copyright 2022, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:analyzer/dart/element/element2.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'collection_generator.dart';

abstract class ParserGenerator<GlobalDat extends GlobalData, Data, Annotation>
    extends GeneratorForAnnotation<Annotation> {
  @override
  FutureOr<String> generate(LibraryReader libraryReader, BuildStep buildStep) async {
    final library = libraryReader.element;
    final generationBuffer = StringBuffer();
    // A set used to remove duplicate generations. This is for scenarios where
    // two annotations within the library want to generate the same code
    final generatedCache = <String>{};

    final globalData = parseGlobalData(library);
    for (final generated in generateForAll(globalData).map((e) => e.toString())) {
      assert(generated.length == generated.trim().length);
      if (generatedCache.add(generated)) {
        generationBuffer.writeln(generated);
      }
    }

    return '$generationBuffer\n\n${await super.generate(libraryReader, buildStep)}';
  }

  Iterable<Object> generateForAll(GlobalData globalData) sync* {}

  GlobalData parseGlobalData(LibraryElement2 library);

  FutureOr<Data> parseElement(BuildStep buildStep, GlobalData globalData, Element2 element);

  Iterable<Object> generateForData(GlobalData globalData, Data data);

  @override
  Stream<String> generateForAnnotatedElement(
    Element2 element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async* {
    // implemented for source_gen_test – otherwise unused
    final globalData = parseGlobalData(element.library2!);
    final data = parseElement(buildStep, globalData, element);

    if (data == null) return;

    for (final value in generateForData(globalData, await data)) {
      yield value.toString();
    }
  }
}
