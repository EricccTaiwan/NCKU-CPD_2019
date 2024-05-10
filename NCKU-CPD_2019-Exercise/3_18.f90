program test
implicit none

integer::day,day_of_year,i,leap_day,month,year,ppap
write(*,*)'plz enter month , day , year'
read(*,*)month,day,year

select case (month)
   if ((month>=1) .and. (12>=month)) then
    case(1,3,5,7,8,10,12)
      select case(day)
      case(1:31)
      case default
      write(*,*)'day must between 1 and 31'
     end select

   case(4,6,9,11)
    select case(day)
     case(1:30)
     case default
     write(*,*)'day must between 1 and 30'
    end select
     
   case(2)
    select case (year)
     inner:if(mod(year,400)==0)then
     leap_day=1
     else if(mod(year,100)==0)then
     leap_day=0
     else if(mod(year,4)==0)then
     leap_day=1
     else
     leap_day=0
    end if inner
     select case(day)
	 if((day<=1) .and. (day>=ppap) )then
      write(*,*)'day must between 1 and',ppap
	 end if
	 end select
    end select

   else
   write(*,*)'plz enter a number between 1 and 12'
   end if

end select

if (year<=0)then
write(*,*)'plz enter year greater than 0'
end if


if(mod(year,400)==0)then
leap_day=1
else if(mod(year,100)==0)then
leap_day=0
else if(mod(year,4)==0)then
leap_day=1
else
leap_day=0
end if

day_of_year=day
do i = 1,month-1

select case(i)

case(1,3,5,7,8,10,12)
day_of_year=day_of_year+31
case(4,6,9,11)
day_of_year=day_of_year+30
case(2)
day_of_year=day_of_year+28+leap_day
end select

end do
write(*,*)'day=',day
write(*,*)'month=',month
write(*,*)'year=',year
write(*,*)'day of year=',day_of_year



end program