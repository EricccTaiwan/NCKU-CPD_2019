program test
implicit none

real::g=-9.9
real::theta=0
real::range
real::degree_to_rad
real::i
real::v=10
real::max_range=0
real::max_theta



do v = 10 , 30 , 10

do i=1,3
 g=g+0.1
   do theta = 0 , 90
    degree_to_rad = theta*(3.14/180.)
    range=-2*v**2*cos(degree_to_rad)*sin(degree_to_rad)/g
    write(*,100)g
    100 format('when acc is',f4.1)
	write(*,*)'the velocity is',v
    write(*,*)'when theta is',theta,'degree '
    write(*,*)'the range is',range  
      if(max_range<range)then                                !角度比大小我不會
	   max_range=range
	   max_theta=theta
	  end if
  end do 
 write(*,*)'the max range is',max_range,max_theta
end do
end do
pause
end program

