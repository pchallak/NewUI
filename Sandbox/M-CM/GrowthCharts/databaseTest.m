test001() ; 10/14/12 8:00pm
 do createDB^databaseMCM
 new name
 set name=""
 set name("first")="John01"
 set name("last")="Smith01"
 write "Name = ",!
 zwrite name
 write !
 set dateOfBirth=$$FUNC^%DATE("10/20/2005")
 do addChild^databaseMCM(.name,dateOfBirth)
 set name("first")="John02"
 set name("last")="Smith02"
 set dateOfBirth=$$FUNC^%DATE("11/22/2004")
 do addChild^databaseMCM(.name,dateOfBirth)
 set childId=1
 do addWeightMeasurement^databaseMCM(childId,"12/20/2005",25.4)
 do addWeightMeasurement^databaseMCM(childId,"05/10/2006",35.6)
 do addWeightMeasurement^databaseMCM(childId,"07/08/2007",45.6)
 zwrite ^zmcmData
 quit


