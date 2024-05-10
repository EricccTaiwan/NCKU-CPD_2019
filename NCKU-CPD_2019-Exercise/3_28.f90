program test
implicit none

real::h
real::x
real::n=0
real::k=0  !記得設為real


write(*,*)'plz enter ur values'


do
 read(*,*)x
 if(x<=0)then
 exit
 end if
 n=n+1
 k=k+(1/x)
end do

h=n/k
write(*,*)'harmonic mean=',h
pause
end program