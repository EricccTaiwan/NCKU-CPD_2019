program test
implicit none

real::x
real::y
integer::i
integer::n=0
integer::g=1

write(*,*)'enter ur value of x'
read(*,*)x
y=x/nint(x)

if(x<=0) then
write(*,*)'x must greater than 0'

else if(y==1)then
 do i = 1 , x
    n=n+1
	g=g*n
 
 end do
write(*,*)g

else
 write(*,*)'x must be an integer'
 
end if
pause
end program
