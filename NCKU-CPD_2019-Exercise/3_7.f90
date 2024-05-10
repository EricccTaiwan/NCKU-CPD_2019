program turtle
implicit none

real::sum
integer::weight
write(*,*)'plz enter ur wait'
read(*,*)weight

select case (weight)

case(0:2)
write(*,*)'the total cost is 10'
case(3:70)
sum=10+(weight-2)*3.75
write(*,*)'the total cost is ',sum
case(71:100)
sum=10+10+(weight-2)*3.75
write(*,*)'the total cost is ',sum
case(101:)
write(*,*)'no package over 100 pounds will be accepted'
case default
write(*,*)'plz enter a positive number'
end select
pause

end program
