// Copyright 2022, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'collection_data.dart';
import 'collection_generator.dart';

abstract class ParserGenerator<AnnotationT> extends GeneratorForAnnotation<AnnotationT> {
  @override
  FutureOr<String> generate(LibraryReader library, BuildStep buildStep) async {
    final element = library.element;
    final superGenerated = await super.generate(library, buildStep);
    if (superGenerated.trim().isEmpty) return '';

    final generationBuffer = StringBuffer();
    // A set used to remove duplicate generations. This is for scenarios where
    // two annotations within the library want to generate the same code
    final generatedCache = <String>{};

    final globalData = parseGlobalData(element);
    for (final generated in generateForAll(globalData).map((e) => e.toString())) {
      assert(generated.length == generated.trim().length);
      if (generatedCache.add(generated)) {
        generationBuffer.writeln(generated);
      }
    }

    return '$generationBuffer\n\n$superGenerated';
  }

  Iterable<Object> generateForAll(GlobalData globalData) sync* {}

  GlobalData parseGlobalData(LibraryElement library);

  Future<CollectionGraph> parseElement(BuildStep buildStep, GlobalData globalData, Element element);

  Iterable<Object> generateForData(GlobalData globalData, CollectionGraph data);

  @override
  Stream<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async* {
    // implemented for source_gen_test – otherwise unused
    final globalData = parseGlobalData(element.library!);
    final data = await parseElement(buildStep, globalData, element);

    for (final value in generateForData(globalData, data)) {
      yield value.toString();
    }
  }
}
