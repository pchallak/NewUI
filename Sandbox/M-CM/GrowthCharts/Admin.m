login(sessid) ; 11/13/12 6:42pm
 n username,password
 set a="Never again"
 d clearFieldErrors^%zewdExt4Code(sessid)
 s username=$$getSessionValue^%zewdAPI("username",sessid)
 s password=$$getSessionValue^%zewdAPI("password",sessid)
 i username="" d setFieldError^%zewdExt4Code("username","Enter a username. I dare you.",sessid)
 i password="" d setFieldError^%zewdExt4Code("password","What is the secret password?",sessid)
 i username'="mcm" d setFieldError^%zewdExt4Code("usarname","Sorry. I don't know you.",sessid)
 i password'="12345" d setFieldError^%zewdExt4Code("password","Your password is bad, and you should feel bad.",sessid)
 QUIT $$formErrors^%zewdExt4Code(sessid)
 ;
