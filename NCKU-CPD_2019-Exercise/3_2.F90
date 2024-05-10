PROGRAM ada
IMPLICIT NONE

integer::t,y
write(*,*)'please enter t'
read(*,*)t

if ( t >=0) then
y=-(3*t**2)+5
write(*,*)y

else 

y=3*t**2+5
write(*,*)y

end if

end program
