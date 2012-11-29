getParticipantData(sessid) ; 11/10/12 10:06am
;
 n data
;
 s data(1,"name")="Participant 1"
 s data(1,"sex")="Male"
 s data(1,"agebeyond3")="Yes"
 s data(2,"name")="Participant 2"
 s data(2,"sex")="Male"
 s data(2,"agebeyond3")="Yes"
 s data(3,"name")="Participant 3"
 s data(3,"sex")="Male"
 s data(3,"agebeyond3")="Yes"
 s data(4,"name")="Participant 4"
 s data(4,"sex")="Male"
 s data(4,"agebeyond3")="Yes"
 s data(5,"name")="Participant 5"
 s data(5,"sex")="Male"
 s data(5,"agebeyond3")="Yes"
 s data(6,"name")="Participant 6"
 s data(6,"sex")="Male"
 s data(6,"agebeyond3")="Yes"
 s data(7,"name")="Participant 7"
 s data(7,"sex")="Male"
 s data(7,"agebeyond3")="Yes"
 s data(8,"name")="Participant 8"
 s data(8,"sex")="Male"
 s data(8,"agebeyond3")="Yes"
 s data(9,"name")="Participant 9"
 s data(9,"sex")="Male"
 s data(9,"agebeyond3")="Yes"
 d deleteFromSession^%zewdAPI("entryTableData",sessid)
 d mergeArrayToSession^%zewdAPI(.data,"entryTableData",sessid)

 ;
 QUIT ""
