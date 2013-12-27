//
// Copyright (C) 2013 Edwin Bühler. All Rights Reserved.
//
// @author Edwin Bühler
//


// ***********************************************************************************
//
// This file is current only to test standard list with the content of the sparse list.
//
// ***********************************************************************************

library unicode_helper_obsolete_tests.dart;

import '../lib/unicode_helper_characters.dart';
import '../lib/unicode_helper_characters_obsolete.dart';

import 'package:unittest/unittest.dart';

main() {
  for(var i = 0; i < unicodeCharacterCategory.length; i++) {
    group("compare lists", () {
      test("compare list[$i] = ${unicodeCharacterCategory[i]}", () => expect(unicodeCharacterCategory_OBSOLETE[i] == unicodeCharacterCategory[i] ,isTrue));
    });
  }
}