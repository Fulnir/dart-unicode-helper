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
    test("isDigit(' ')", () => expect(isDigit(' '.runes.toList()[0]), isFalse) );
    test("isDigit('a')", () => expect(isDigit('a'.runes.toList()[0]), isFalse) );
    test("isDigit('Ä')", () => expect(isDigit('Ä'.runes.toList()[0]), isFalse) );
    test("isDigit('ß')", () => expect(isDigit('ß'.runes.toList()[0]), isFalse) );
    test("isDigit('0')", () => expect(isDigit('0'.runes.toList()[0]), isTrue) );
    test("isDigit('1')", () => expect(isDigit('1'.runes.toList()[0]), isTrue) );
    test("isDigit('2')", () => expect(isDigit('2'.runes.toList()[0]), isTrue) );
    test("isDigit('3')", () => expect(isDigit('3'.runes.toList()[0]), isTrue) );
    test("isDigit('4')", () => expect(isDigit('4'.runes.toList()[0]), isTrue) );
    test("isDigit('5')", () => expect(isDigit('5'.runes.toList()[0]), isTrue) );
    test("isDigit('6')", () => expect(isDigit('6'.runes.toList()[0]), isTrue) );
    test("isDigit('7')", () => expect(isDigit('7'.runes.toList()[0]), isTrue) );
    test("isDigit('8')", () => expect(isDigit('8'.runes.toList()[0]), isTrue) );
    test("isDigit('9')", () => expect(isDigit('9'.runes.toList()[0]), isTrue) );
  });
  group("isLetter('')", () {
    test("isLetter('a')", () => expect(isLetter('a'.runes.toList()[0]), isTrue) );
    test("isLetter(' ')", () => expect(isLetter(' '.runes.toList()[0]), isFalse) );
    test("isLetter('1')", () => expect(isLetter('1'.runes.toList()[0]), isFalse) );
    test("isLetter('€')", () => expect(isLetter('€'.runes.toList()[0]), isFalse) );
    test("isLetter('%')", () => expect(isLetter('%'.runes.toList()[0]), isFalse) );
    test("isLetter('^')", () => expect(isLetter('^'.runes.toList()[0]), isFalse) );
    test("isLetter('b')", () => expect(isLetter('b'.runes.toList()[0]), isTrue) );
    test("isLetter('a')", () => expect(isLetter('a'.runes.toList()[0]), isTrue) );
    test("isLetter('ä')", () => expect(isLetter('ä'.runes.toList()[0]), isTrue) );
    test("isLetter('Ä')", () => expect(isLetter('Ä'.runes.toList()[0]), isTrue) );
    test("isLetter('ム')", () => expect(isLetter('ム'.runes.toList()[0]), isTrue) );
    test("isLetter('料')", () => expect(isLetter('料'.runes.toList()[0]), isTrue) );
    test("isLetter('ア')", () => expect(isLetter('ア'.runes.toList()[0]), isTrue) );
    test("isLetter('ñ')", () => expect(isLetter('ñ'.runes.toList()[0]), isTrue) );
    test("isLetter('é')", () => expect(isLetter('é'.runes.toList()[0]), isTrue) );
  });
  group("isLowercase('')", () {
    test("isLowercase('A')", () => expect(isLowercase('A'.runes.toList()[0]), isFalse) );
    test("isLowercase('€')", () => expect(isLowercase('€'.runes.toList()[0]), isFalse) );
    test("isLowercase('Ü')", () => expect(isLowercase('Ü'.runes.toList()[0]), isFalse) );
    test("isLowercase('%')", () => expect(isLowercase('%'.runes.toList()[0]), isFalse) );
    test("isLowercase('a')", () => expect(isLowercase('a'.runes.toList()[0]), isTrue) );
    test("isLowercase('e')", () => expect(isLowercase('e'.runes.toList()[0]), isTrue) );
    test("isLowercase('ア')", () => expect(isLowercase('ア'.runes.toList()[0]), isFalse) );
  });
  group("isUppercase('')", () {
    test("isUppercase('A')", () => expect(isUppercase('A'.runes.toList()[0]), isTrue) );
    test("isUppercase('€')", () => expect(isUppercase('€'.runes.toList()[0]), isFalse) );
    test("isUppercase('Ü')", () => expect(isUppercase('Ü'.runes.toList()[0]), isTrue) );
    test("isUppercase('%')", () => expect(isUppercase('%'.runes.toList()[0]), isFalse) );
    test("isUppercase('a')", () => expect(isUppercase('a'.runes.toList()[0]), isFalse) );
    test("isUppercase('e')", () => expect(isUppercase('e'.runes.toList()[0]), isFalse) );
    test("isUppercase('ア')", () => expect(isUppercase('ア'.runes.toList()[0]), isFalse) );
  });
  group("isCurrency('')", () {
    test("isCurrency('A')", () => expect(isCurrency('A'.runes.toList()[0]), isFalse) );
    test(r"isCurrency('$')", () => expect(isCurrency(r'$'.runes.toList()[0]), isTrue) );
    test("isCurrency('€')", () => expect(isCurrency('€'.runes.toList()[0]), isTrue) );
    test("isCurrency('¥')", () => expect(isCurrency('¥'.runes.toList()[0]), isTrue) );
    test("isCurrency('Ü')", () => expect(isCurrency('Ü'.runes.toList()[0]), isFalse) );
    test("isCurrency('%')", () => expect(isCurrency('%'.runes.toList()[0]), isFalse) );
    test("isCurrency('a')", () => expect(isCurrency('a'.runes.toList()[0]), isFalse) );
    test("isCurrency('e')", () => expect(isCurrency('e'.runes.toList()[0]), isFalse) );
    test("isCurrency('ア')", () => expect(isCurrency('ア'.runes.toList()[0]), isFalse) );
  });
  group("isSeparator('')", () {
    test("isSeparator('A')", () => expect(isSeparator('A'.runes.toList()[0]), isFalse) );
    test("isSeparator('€')", () => expect(isSeparator('€'.runes.toList()[0]), isFalse) );
    test("isSeparator('Ü')", () => expect(isSeparator('Ü'.runes.toList()[0]), isFalse) );
    test("isSeparator(' ') space", () => expect(isSeparator(32), isTrue) );
    test("isSeparator(' ') cr", () => expect(isSeparator(13), isFalse) );
    test("isSeparator(' ') tab", () => expect(isSeparator(9), isFalse) );
    test("isSeparator(' ') line feed", () => expect(isSeparator(10), isFalse) );
    test("isSeparator(' ') form feed", () => expect(isSeparator(12), isFalse) );
  });
  group("isControl('')", () {
    test("isControl('A')", () => expect(isControl('A'.runes.toList()[0]), isFalse) );
    test("isControl('€')", () => expect(isControl('€'.runes.toList()[0]), isFalse) );
    test("isControl('Ü')", () => expect(isControl('Ü'.runes.toList()[0]), isFalse) );
    test("isControl(' ') space", () => expect(isControl(32), isFalse) );
    test("isControl(' ') cr", () => expect(isControl(13), isTrue) );
    test("isControl(' ') tab", () => expect(isControl(9), isTrue) );
    test("isControl(' ') line feed", () => expect(isControl(10), isTrue) );
    test("isControl(' ') form feed", () => expect(isControl(12), isTrue) );
  });
}