program test
implicit none
integer::a
integer::b
integer::theta
integer::n=0
real::rad
real::area
real::max_a
real::max_b
real::max_area=0
do
  write(*,*)'a'
  read(*,*)a
  write(*,*)'b'
  read(*,*)b
  write(*,*)'theta'
  read(*,*)theta
  n=n+1
  rad=theta*3.1415926/180.
  area=a*b*sin(rad)
   if((theta<=0.) .OR. (theta>=180.))then
    write(*,*)'Angle out of the range'
   else
    write(*,*)'area=',area
     if(area>max_area)then
      max_area=area
      max_a=a
      max_b=b
	 end if
	if(n==5)exit
   end if
end do
write(*,*)'maximum area =',max_area
write(*,*)'a maximizes the area',max_a
write(*,*)'b maximizes the area',max_b
end program
