program test
implicit none

real::rms
integer::n
integer::x
integer::k
integer::i=0
real::ans
write(*,*)'plz enter the amounts'
read(*,*)n

write(*,*)'plz enter ur x'

do k=1,n
 read(*,*)x

 i=i+x**2
 
end do

rms=((1/real(n))*real(i))
ans=sqrt(rms)

write(*,*)ans
pause
end program