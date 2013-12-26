//
// Copyright (C) 2013 Edwin Bühler. All Rights Reserved.
//
// @author Edwin Bühler
//
// This Implementation is based on the algorithm by the Squeak/Pharo Smalltalk Unicode class.

import 'unicode_helper_characters.dart';

/**
 * This library is a workaround for non ascii characters.
 *
 * Some simple functions like isLetter(int charCode) checking a unicode
 * table with a given unicode value.
 *
 * ### Functions
 *
 *     bool isLetter(int c);
 *     bool isUppercase(int c);
 *     bool isLowercase(int c);
 *     bool isDigit(int c);
 *     bool isCurrency(int c);
 *     bool isSeparator(int c);
 *     bool isControl(int c);
 *
 */

/*
Lu Letter, Uppercase
Ll Letter, Lowercase
Lt Letter, Titlecase
Lm Letter, Modifier
Lo Letter, Other
Mn Mark, Non-Spacing
Mc Mark, Spacing Combining
Me Mark, Enclosing
Nd Number, Decimal
Nl Number, Letter
No Number, Other
Pc Punctuation, Connector
Pd Punctuation, Dash
Ps Punctuation, Open
Pe Punctuation, Close
Pi Punctuation, Initial quote (may behave like Ps or Pe depending on usage)
Pf Punctuation, Final quote (may behave like Ps or Pe depending on usage)
Po Punctuation, Other
Sm Symbol, Math
Sc Symbol, Currency
Sk Symbol, Modifier
So Symbol, Other
Zs Separator, Space
Zl Separator, Line
Zp Separator, Paragraph
Cc Other, Control
Cf Other, Format
Cs Other, Surrogate
Co Other, Private Use
Cn Other, Not Assigned (no characters in the file have this property)


  Correlated with Unicode 3.2
  Start Code..End Code; Block Name
0000..007F; Basic Latin
0080..00FF; Latin-1 Supplement
0100..017F; Latin Extended-A
0180..024F; Latin Extended-B
0250..02AF; IPA Extensions
02B0..02FF; Spacing Modifier Letters
0300..036F; Combining Diacritical Marks
0370..03FF; Greek and Coptic
0400..04FF; Cyrillic
0500..052F; Cyrillic Supplementary
0530..058F; Armenian
0590..05FF; Hebrew
0600..06FF; Arabic
0700..074F; Syriac
0780..07BF; Thaana
0900..097F; Devanagari
0980..09FF; Bengali
0A00..0A7F; Gurmukhi
0A80..0AFF; Gujarati
0B00..0B7F; Oriya
0B80..0BFF; Tamil
0C00..0C7F; Telugu
0C80..0CFF; Kannada
0D00..0D7F; Malayalam
0D80..0DFF; Sinhala
0E00..0E7F; Thai
0E80..0EFF; Lao
0F00..0FFF; Tibetan
1000..109F; Myanmar
10A0..10FF; Georgian
1100..11FF; Hangul Jamo
1200..137F; Ethiopic
13A0..13FF; Cherokee
1400..167F; Unified Canadian Aboriginal Syllabics
1680..169F; Ogham
16A0..16FF; Runic
1700..171F; Tagalog
1720..173F; Hanunoo
1740..175F; Buhid
1760..177F; Tagbanwa
1780..17FF; Khmer
1800..18AF; Mongolian
1E00..1EFF; Latin Extended Additional
1F00..1FFF; Greek Extended
2000..206F; General Punctuation
2070..209F; Superscripts and Subscripts
20A0..20CF; Currency Symbols
20D0..20FF; Combining Diacritical Marks for Symbols
2100..214F; Letterlike Symbols
2150..218F; Number Forms
2190..21FF; Arrows
2200..22FF; Mathematical Operators
2300..23FF; Miscellaneous Technical
2400..243F; Control Pictures
2440..245F; Optical Character Recognition
2460..24FF; Enclosed Alphanumerics
2500..257F; Box Drawing
2580..259F; Block Elements
25A0..25FF; Geometric Shapes
2600..26FF; Miscellaneous Symbols
2700..27BF; Dingbats
27C0..27EF; Miscellaneous Mathematical Symbols-A
27F0..27FF; Supplemental Arrows-A
2800..28FF; Braille Patterns
2900..297F; Supplemental Arrows-B
2980..29FF; Miscellaneous Mathematical Symbols-B
2A00..2AFF; Supplemental Mathematical Operators
2E80..2EFF; CJK Radicals Supplement
2F00..2FDF; Kangxi Radicals
2FF0..2FFF; Ideographic Description Characters
3000..303F; CJK Symbols and Punctuation
3040..309F; Hiragana
30A0..30FF; Katakana
3100..312F; Bopomofo
3130..318F; Hangul Compatibility Jamo
3190..319F; Kanbun
31A0..31BF; Bopomofo Extended
31F0..31FF; Katakana Phonetic Extensions
3200..32FF; Enclosed CJK Letters and Months
3300..33FF; CJK Compatibility
3400..4DBF; CJK Unified Ideographs Extension A
4E00..9FFF; CJK Unified Ideographs
A000..A48F; Yi Syllables
A490..A4CF; Yi Radicals
AC00..D7AF; Hangul Syllables
D800..DB7F; High Surrogates
DB80..DBFF; High Private Use Surrogates
DC00..DFFF; Low Surrogates
E000..F8FF; Private Use Area
F900..FAFF; CJK Compatibility Ideographs
FB00..FB4F; Alphabetic Presentation Forms
FB50..FDFF; Arabic Presentation Forms-A
FE00..FE0F; Variation Selectors
FE20..FE2F; Combining Half Marks
FE30..FE4F; CJK Compatibility Forms
FE50..FE6F; Small Form Variants
FE70..FEFF; Arabic Presentation Forms-B
FF00..FFEF; Halfwidth and Fullwidth Forms
FFF0..FFFF; Specials
10300..1032F; Old Italic
10330..1034F; Gothic
10400..1044F; Deseret
1D000..1D0FF; Byzantine Musical Symbols
1D100..1D1FF; Musical Symbols
1D400..1D7FF; Mathematical Alphanumeric Symbols
20000..2A6DF; CJK Unified Ideographs Extension B
2F800..2FA1F; CJK Compatibility Ideographs Supplement
E0000..E007F; Tags
F0000..FFFFF; Supplementary Private Use Area-A
100000..10FFFF; Supplementary Private Use Area-B
 */

final Cn = 0;
final Cc = 1;
final Cf = 2;
final Co = 3;
final Cs = 4;
final Ll = 5;
final Lm = 6;
final Lo = 7;
final Lt = 8;
final Lu = 9;
final Mc = 10;
final Me = 11;
final Mn = 12;
final Nd = 13;
final Nl = 14;
final No = 15;
final Pc = 16;
final Pd = 17;
final Pe = 18;
final Pf = 19;
final Pi = 20;
final Po = 21;
final Ps = 22;
final Sc = 23;
final Sk = 24;
final Sm = 25;
final So = 26;
final Zl = 27;
final Zp = 28;
final Zs = 29;

/// Indicates whether the specified Unicode character code is categorized as a Unicode letter.
bool isLetter(int c) {
  var cat =  unicodeCharacterCategory[c];
  if((cat >= Ll) && (cat <= Lu)) {
    return true;
  }
  return false;
}
/// Indicates whether the specified Unicode character code is categorized as an upper case character.
bool isUppercase(int c) {
  var cat =  unicodeCharacterCategory[c];
  if (cat == Lu) {
    return true;
  }
  return false;
}
/// Indicates whether the specified Unicode character code is categorized as an lower case character.
bool isLowercase(int c) {
  var cat =  unicodeCharacterCategory[c];
  if (cat == Ll) {
    return true;
  }
  return false;
}
/// Indicates whether the specified Unicode character code is categorized as a decimal digit.
bool isDigit(int c) {
  var cat =  unicodeCharacterCategory[c];
  if (cat == Nd) {
    return true;
  }
  return false;
}
/// Indicates whether the specified Unicode character code is categorized as a currency symbol.
bool isCurrency(int c) {
  var cat =  unicodeCharacterCategory[c];
  if (cat == Sc) {
    return true;
  }
  return false;
}
/// Indicates whether a Unicode character code is categorized as a separator character.
/// The Unicode standard classifies the characters \u000A (LF), \u000C (FF), and \u000A (CR)
/// as control characters, not as separator characters.
bool isSeparator(int c) {
  var cat =  unicodeCharacterCategory[c];
  if((cat >= Zl) && (cat <= Zs)) {
    return true;
  }
  return false;
}
/// Indicates whether a specified Unicode character code is categorized as a control character.
bool isControl(int c) {
  var cat =  unicodeCharacterCategory[c];
  if((cat >= Cc) && (cat <= Cs)) {
    return true;
  }
  return false;
}