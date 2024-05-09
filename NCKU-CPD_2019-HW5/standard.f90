program test
implicit none

real::s
real::x
real::n
real::number
integer::i
integer::g=0
real::square=0
real::sum=0
integer::l
integer::t
integer::kz

write(*,*)'enter ur amounts'
read(*,*)n
if(n<2)then
write(*,*)'at least two values must be entered'
end if

write(*,*)'write ur value'


do i =1,n
 read(*,*)x
  if(x<0)then
  write(*,*)'value is negative'
  else 
   do l=1,1
    g=g+1
	sum=sum+x
	square=square+x**2
    write(*,*)x
   end do
  end if
end do

s=sqrt((g*square-sum**2)/(g*(g-1)))

write(*,*)s


end program

 
