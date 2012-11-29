createDB() ; 10/17/12 11:55pm
 kill ^zmcmData
 set ^zmcmData=""
 set ^zmcmData("nextChild")=0
 set ^zmcmData("children")=""
 quit
 ;
addChild(name,dateOfBirth,gender) ;
 new thisChild
 set thisChild=^zmcmData("nextChild")
 set ^zmcmData("children",thisChild,"name")=""
 if $data(name("first")) set ^zmcmData("children",thisChild,"name","first")=name("first")
 if $data(name("middle")) set ^zmcmData("children",thisChild,"name","middle")=name("middle")
 if $data(name("last")) set ^zmcmData("children",thisChild,"name","last")=name("last")
 set ^zmcmData("children",thisChild,"dateOfBirth")=$$FUNC^%DATE(dateOfBirth)
 set ^zmcmData("children",thisChild,"gender")=gender
 set ^zmcmData("children",thisChild,"measurements")=""
 set ^zmcmData("children",thisChild,"measurements","weight")=""
 set ^zmcmData("children",thisChild,"measurements","height")=""
 set ^zmcmData("children",thisChild,"measurements","headCircumference")=""
 set ^zmcmData("nextChild")=thisChild+1
 quit thisChild
 ;
addWeightMeasurement(childId,date,weight) ;
 do addMeasurement(childId,date,"weight",weight)
 quit
 ;
addHeightMeasurement(childId,date,height) ;
 do addMeasurement(childId,date,"height",height)
 quit
 ;
addHeadCircMeasurement(childId,date,headCircumference) ;
 do addMeasurement(childId,date,"headCircumference",headCircumference)
 quit
 ;
addMeasurement(childId,date,metric,measurement) ;
 new horologDate
 set horologDate=$$FUNC^%DATE(date)
 set ^zmcmData("children",childId,"measurements",metric,horologDate)=measurement
 kill horologDate
 quit
 ;

