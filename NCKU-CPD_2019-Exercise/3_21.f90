program test
implicit none

real::id !the voltage across the diode
real::vd=-1.1 !the current flow the diode �Ĥ@���]�N��1.0
real::io=2.0*10**(-6)     !the leakage current of the diode
real::q=1.602*10**(-19)  !the charge on an electron
real::k=1.38*10**(-23)  !1.38*10^-23 joule/k
real::t  !temperature in kelvins
real::f  !�ؤ�ū�
real::i  !do�j��ϥ�
real::p  !��@-q*vd/K*t���⦡



 

 do f = 75 , 125 , 25
  bbb: do i = -10 , 8 ,1 
     t=real(f-32)*(5./9.) +273.15 !real()�O�o��
	 vd=0.1+vd
	
     
     
	 write(*,*)'when the temperature is',f
     write(*,*)'the current flowing thru this diodes is',id
	 write(*,*)'the voltage across the diode is',vd 
   end do bbb
 end do
 pause

end program
