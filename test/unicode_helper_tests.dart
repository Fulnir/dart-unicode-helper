//
// Copyright (C) 2013 Edwin Bühler. All Rights Reserved.
//
// @author Edwin Bühler
//
library unicode_helper_tests.dart;

import '../lib/unicode_helper.dart';

import 'package:unittest/unittest.dart';

main() {
  group("isDigit('')", () {
    test("isDigit(' ')", () => expect(UnicodeHelper.isDigit(' '.runes.toList()[0]), isFalse) );
    test("isDigit('a')", () => expect(UnicodeHelper.isDigit('a'.runes.toList()[0]), isFalse) );
    test("isDigit('Ä')", () => expect(UnicodeHelper.isDigit('Ä'.runes.toList()[0]), isFalse) );
    test("isDigit('ß')", () => expect(UnicodeHelper.isDigit('ß'.runes.toList()[0]), isFalse) );
    test("isDigit('0')", () => expect(UnicodeHelper.isDigit('0'.runes.toList()[0]), isTrue) );
    test("isDigit('1')", () => expect(UnicodeHelper.isDigit('1'.runes.toList()[0]), isTrue) );
    test("isDigit('2')", () => expect(UnicodeHelper.isDigit('2'.runes.toList()[0]), isTrue) );
    test("isDigit('3')", () => expect(UnicodeHelper.isDigit('3'.runes.toList()[0]), isTrue) );
    test("isDigit('4')", () => expect(UnicodeHelper.isDigit('4'.runes.toList()[0]), isTrue) );
    test("isDigit('5')", () => expect(UnicodeHelper.isDigit('5'.runes.toList()[0]), isTrue) );
    test("isDigit('6')", () => expect(UnicodeHelper.isDigit('6'.runes.toList()[0]), isTrue) );
    test("isDigit('7')", () => expect(UnicodeHelper.isDigit('7'.runes.toList()[0]), isTrue) );
    test("isDigit('8')", () => expect(UnicodeHelper.isDigit('8'.runes.toList()[0]), isTrue) );
    test("isDigit('9')", () => expect(UnicodeHelper.isDigit('9'.runes.toList()[0]), isTrue) );

    //test("isDigit('0x61')", () => expect(UnicodeHelper.isDigit(0x61), isTrue ));
  });
  group("isLetter('')", () {
    test("isLetter(' ')", () => expect(UnicodeHelper.isLetter(' '.runes.toList()[0]), isFalse) );
    test("isLetter('1')", () => expect(UnicodeHelper.isLetter('1'.runes.toList()[0]), isFalse) );
    test("isLetter('€')", () => expect(UnicodeHelper.isLetter('€'.runes.toList()[0]), isFalse) );
    test("isLetter('%')", () => expect(UnicodeHelper.isLetter('%'.runes.toList()[0]), isFalse) );
    test("isLetter('^')", () => expect(UnicodeHelper.isLetter('^'.runes.toList()[0]), isFalse) );
    test("isLetter('b')", () => expect(UnicodeHelper.isLetter('b'.runes.toList()[0]), isTrue) );
    test("isLetter('a')", () => expect(UnicodeHelper.isLetter('a'.runes.toList()[0]), isTrue) );
    test("isLetter('ä')", () => expect(UnicodeHelper.isLetter('ä'.runes.toList()[0]), isTrue) );
    test("isLetter('Ä')", () => expect(UnicodeHelper.isLetter('Ä'.runes.toList()[0]), isTrue) );
    test("isLetter('ム')", () => expect(UnicodeHelper.isLetter('ム'.runes.toList()[0]), isTrue) );
    //test("isLetter('')", () => expect(UnicodeHelper.isLetter(''.runes.toList()[0]), isTrue) );
    test("isLetter('料')", () => expect(UnicodeHelper.isLetter('料'.runes.toList()[0]), isTrue) );
    test("isLetter('ア')", () => expect(UnicodeHelper.isLetter('ア'.runes.toList()[0]), isTrue) );
    test("isLetter('ñ')", () => expect(UnicodeHelper.isLetter('ñ'.runes.toList()[0]), isTrue) );
    test("isLetter('é')", () => expect(UnicodeHelper.isLetter('é'.runes.toList()[0]), isTrue) );
  });
  group("isLowercase('')", () {
    //test("isLowercase('')", () => expect(UnicodeHelper.isLowercase(''.runes.toList()[0]), isFalse) );
    //test("isLowercase('')", () => expect(UnicodeHelper.isLowercase(''.runes.toList()[0]), isTrue) );
    test("isLowercase('A')", () => expect(UnicodeHelper.isLowercase('A'.runes.toList()[0]), isFalse) );
    test("isLowercase('€')", () => expect(UnicodeHelper.isLowercase('€'.runes.toList()[0]), isFalse) );
    test("isLowercase('Ü')", () => expect(UnicodeHelper.isLowercase('Ü'.runes.toList()[0]), isFalse) );
    test("isLowercase('%')", () => expect(UnicodeHelper.isLowercase('%'.runes.toList()[0]), isFalse) );
    test("isLowercase('a')", () => expect(UnicodeHelper.isLowercase('a'.runes.toList()[0]), isTrue) );
    test("isLowercase('e')", () => expect(UnicodeHelper.isLowercase('e'.runes.toList()[0]), isTrue) );
    test("isLowercase('ア')", () => expect(UnicodeHelper.isLowercase('ア'.runes.toList()[0]), isFalse) );
  });
  group("isUppercase('')", () {
    //test("isLowercase('')", () => expect(UnicodeHelper.isLowercase(''.runes.toList()[0]), isFalse) );
    //test("isLowercase('')", () => expect(UnicodeHelper.isLowercase(''.runes.toList()[0]), isTrue) );
    test("isUppercase('A')", () => expect(UnicodeHelper.isUppercase('A'.runes.toList()[0]), isTrue) );
    test("isUppercase('€')", () => expect(UnicodeHelper.isUppercase('€'.runes.toList()[0]), isFalse) );
    test("isUppercase('Ü')", () => expect(UnicodeHelper.isUppercase('Ü'.runes.toList()[0]), isTrue) );
    test("isUppercase('%')", () => expect(UnicodeHelper.isUppercase('%'.runes.toList()[0]), isFalse) );
    test("isUppercase('a')", () => expect(UnicodeHelper.isUppercase('a'.runes.toList()[0]), isFalse) );
    test("isUppercase('e')", () => expect(UnicodeHelper.isUppercase('e'.runes.toList()[0]), isFalse) );
    test("isUppercase('ア')", () => expect(UnicodeHelper.isUppercase('ア'.runes.toList()[0]), isFalse) );
  });
  group("isCurrency('')", () {
    test("isCurrency('A')", () => expect(UnicodeHelper.isCurrency('A'.runes.toList()[0]), isFalse) );
    test(r"isCurrency('$')", () => expect(UnicodeHelper.isCurrency(r'$'.runes.toList()[0]), isTrue) );
    test("isCurrency('€')", () => expect(UnicodeHelper.isCurrency('€'.runes.toList()[0]), isTrue) );
    test("isCurrency('¥')", () => expect(UnicodeHelper.isCurrency('¥'.runes.toList()[0]), isTrue) );
    test("isCurrency('Ü')", () => expect(UnicodeHelper.isCurrency('Ü'.runes.toList()[0]), isFalse) );
    test("isCurrency('%')", () => expect(UnicodeHelper.isCurrency('%'.runes.toList()[0]), isFalse) );
    test("isCurrency('a')", () => expect(UnicodeHelper.isCurrency('a'.runes.toList()[0]), isFalse) );
    test("isCurrency('e')", () => expect(UnicodeHelper.isCurrency('e'.runes.toList()[0]), isFalse) );
    test("isCurrency('ア')", () => expect(UnicodeHelper.isCurrency('ア'.runes.toList()[0]), isFalse) );
  });
}