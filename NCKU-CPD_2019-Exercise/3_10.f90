program adasdad
implicit none

real::inverse_sine,x

write(*,*)'enter ur value of x'
read(*,*)x

test: if ( (1.0>=x) .and. (x>=-1.0) ) then  !兩個以上的條件要用 .AND. 來連結

inverse_sine=asin(x)

write(*,*)'ur ans',inverse_sine

else test

write(*,*)x,'is out of range!'

end if test

end program

