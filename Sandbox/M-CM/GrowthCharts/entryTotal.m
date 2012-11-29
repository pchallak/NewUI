getNumberOfParticipants(sessid) ; 11/10/12 10:27am
;
 n numberOfParticipants
 n numberOfParticipantsString
;
 s numberOfParticipants=10;
 s numberOfParticipantsString="All Participants ("_numberOfParticipants_")"
 do setSessionValue^%zewdAPI("totalNumber",numberOfParticipantsString,sessid)
 ;





 QUIT ""
