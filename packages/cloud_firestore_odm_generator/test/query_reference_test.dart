// Copyright 2022, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:expect_error/expect_error.dart';
import 'package:test/test.dart';

Future<void> main() async {
  final library = await Library.custom(
    packageName: 'cloud_firestore_odm_generator_integration_test',
    packageRoot: 'cloud_firestore_odm_generator_integration_test',
    path: 'lib/__test__.dart',
  );

  group('query', () {
    test('does not generate utilities for getters', () {
      expect(
        library.withCode(
          '''
import 'simple.dart';

void main() {
  ignoredGetterRef.whereValue();
  // expect-error: undefined_method
  ignoredGetterRef.whereCount();
  // expect-error: undefined_method
  ignoredGetterRef.whereCount2();
  // expect-error: undefined_method
  ignoredGetterRef.whereCount3();
  // expect-error: undefined_method
  ignoredGetterRef.whereHashCode();
  // expect-error: undefined_method
  ignoredGetterRef.whereStaticGetter();

  subClassRef.whereInstanceGetter();
  // expect-error: undefined_method
  subClassRef.whereStaticGetter();
}
''',
        ),
        compiles,
      );
    });

    test('property type offset queries from value', () {
      expect(
        library.withCode(
          '''
import 'simple.dart';

void main() {
  // expect-error: argument_type_not_assignable
  rootRef.limit(0).orderByNullable(startAt: true);
  // expect-error: argument_type_not_assignable
  rootRef.limit(0).orderByNullable(startAfter: true);
  // expect-error: argument_type_not_assignable
  rootRef.limit(0).orderByNullable(endAt: true);
  // expect-error: argument_type_not_assignable
  rootRef.limit(0).orderByNullable(endBefore: true);

  // expect-error: argument_type_not_assignable
  rootRef.limit(0).orderByNonNullable(startAt: null);
  // expect-error: argument_type_not_assignable
  rootRef.limit(0).orderByNonNullable(startAfter: null);
  // expect-error: argument_type_not_assignable
  rootRef.limit(0).orderByNonNullable(endAt: null);
  // expect-error: argument_type_not_assignable
  rootRef.limit(0).orderByNonNullable(endBefore: null);
}
''',
        ),
        compiles,
      );
    });

    test('supports Freezed', () {
      expect(
        library.withCode(
          '''
import 'freezed.dart';

void main() {
  personRef.whereFirstName(isEqualTo: 'foo');
  personRef.orderByFirstName();

  personRef.doc('42').update(firstName: 'foo');
  personRef.doc('42')
    // expect-error: undefined_named_parameter
    .update(ignored: 42);

  // expect-error: undefined_method
  personRef.orderByIgnored();
  // expect-error: undefined_method
  personRef.whereIgnored();
}
''',
        ),
        compiles,
      );
    });
  });
}
