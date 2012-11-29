
getSexList(sessid) ; 11/10/12 5:27pm
 ;
 do clearList^%zewdAPI("sex",sessid)
 do appendToList^%zewdAPI("sex","Male","male",sessid)
 do appendToList^%zewdAPI("sex","Female","female",sessid)
 do setSessionValue^%zewdAPI("sex","male",sessid)
 ;
 QUIT ""
 ;
validateNewParticipant(sessid) ;
 ; 
 s value=$$getSessionValue^%zewdAPI("rank",sessid)
 ;
 QUIT ""
 ;
addNewParticipant(sessid) ;
 new thisChild
 ;
 lock ^zmcmData("nextChild")
 set thisChild=^zmcmData("nextChild")
 set ^zmcmData("nextChild")=thisChild+1
 lock -^zmcmData("nextChild")
 ;
 s name=$$getSessionValue^%zewdAPI("participantId",sessid)
 s sex=$$getSessionValue^%zewdAPI("sex",sessid)
 ;
 set ^zmcmData("children",thisChild,"name")=name
 set ^zmcmData("children",thisChild,"gender")=sex
 set ^zmcmData("children",thisChild,"measurements")=""
 set ^zmcmData("children",thisChild,"measurements","weight")=""
 set ^zmcmData("children",thisChild,"measurements","height")=""
 set ^zmcmData("children",thisChild,"measurements","headCircumference")=""
 quit thisChild
 ;
