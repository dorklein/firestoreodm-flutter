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

  group('root collections', () {
    test('have no parent', () {
      expect(
        library.withCode(
          '''
import 'simple.dart';

void main() {
  // expect-error: undefined_getter
  rootRef.parent;
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
  rootRef.orderByNullable(startAt: true);
  // expect-error: argument_type_not_assignable
  rootRef.orderByNullable(startAfter: true);
  // expect-error: argument_type_not_assignable
  rootRef.orderByNullable(endAt: true);
  // expect-error: argument_type_not_assignable
  rootRef.orderByNullable(endBefore: true);

  // expect-error: argument_type_not_assignable
  rootRef.orderByNonNullable(startAt: null);
  // expect-error: argument_type_not_assignable
  rootRef.orderByNonNullable(startAfter: null);
  // expect-error: argument_type_not_assignable
  rootRef.orderByNonNullable(endAt: null);
  // expect-error: argument_type_not_assignable
  rootRef.orderByNonNullable(endBefore: null);
}
''',
        ),
        compiles,
      );
    });
  });
}
