// Copyright (C) 2013 Edwin Bühler. All Rights Reserved.
//
// @author Edwin Bühler
//

/* Smalltalk Script
| str fileName | 
  fileName := ((FileDirectory default directoryNamed: '../exportedfiles')fileNamed:   'charlist.txt') fullName.
  str := MultiByteFileStream newFrom: ((FileStream fileNamed: fileName) converter: UTF8TextConverter new).
  str reset.  
  str nextPutAll:  '['; nextPutAll: String cr.	
  Unicode generalCategory keysAndValuesDo:[:k :v |
	str nextPutAll: v asString , ','.
  ].
  str nextPutAll:  ']'; nextPutAll: String cr.	
  str close.
*/

final unicodeCharacterCategory = 

;