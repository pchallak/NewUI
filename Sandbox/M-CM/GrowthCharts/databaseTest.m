; this appears to be a test of the database
;
; I've added comments based on my limited 
; understanding of MUMPS
;
; last modified by Dan Vegeto

test001() ; 10/14/12 8:00pm

 ; presumably creates or connects to the database
 do createDB^databaseMCM

 ; creates a name property
 new name
 set name=""
 set name("first")="John"
 set name("last")="Smith"

 ; writes the name to the database?
 write "Name = ",!
 zwrite name
 write !

 ; creates a date of birth property within the name
 set dateOfBirth=$$FUNC^%DATE("10/20/2005")
 do addChild^databaseMCM(.name,dateOfBirth)

 ; changes the values of first and last name
 set name("first")="John"
 set name("last")="Doe"

 ; changes the value of date of birth
 set dateOfBirth=$$FUNC^%DATE("11/22/2004")
 do addChild^databaseMCM(.name,dateOfBirth)

 ; creates weight property with multiple values over time
 set childId=1
 do addWeightMeasurement^databaseMCM(childId,"12/20/2005",25.4)
 do addWeightMeasurement^databaseMCM(childId,"05/10/2006",35.6)
 do addWeightMeasurement^databaseMCM(childId,"07/08/2007",45.6)

 ; writes all data to the database?
 zwrite ^zmcmData

 quit


