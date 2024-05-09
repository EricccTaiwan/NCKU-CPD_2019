program lkk
implicit none
real::square=0
real::p_square=0
real::s
real::x
integer::k=0
real::n
real::i
write(*,*)'how many numbers to be entered'
read(*,*)n
if(n<2)then
write(*,*)'at least two values must be entered'
else 
do i = 1 , n
write(*,*)'enter numbers'
read(*,*)x
if(x<0)then
write(*,*)'value is negative'
cycle
end if
square=square + x**2
p_square=p_square + x
end do
end if
s=sqrt(n*real(square)-real(p_square)**2/(n*(n-1)))
write(*,*)'ans',s
end program










