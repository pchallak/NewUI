login(sessid) ; 11/13/12 6:42pm
 n username,password
 d clearFieldErrors^%zewdExt4Code(sessid)
 s username=$$getSessionValue^%zewdAPI("username",sessid)
 s password=$$getSessionValue^%zewdAPI("password",sessid)
 i username="" d setFieldError^%zewdExt4Code("username","You must enter a username",sessid)
 i password="" d setFieldError^%zewdExt4Code("password","You must enter a password",sessid)
 i username'="mcm" d setFieldError^%zewdExt4Code("username","Unrecognised username",sessid)
 i password'="12345" d setFieldError^%zewdExt4Code("password","Invalid password",sessid)
 QUIT $$formErrors^%zewdExt4Code(sessid)
 ;
