program test
implicit none

character(len=20)::lesson !要記得打len的長度否則len預設值為1，所以要打len>輸入的值，english等等才能被讀取

write(*,*)'choose a lesson'
read(*,*)lesson


select case (lesson)

case('english')
write(*,*)'english is ur choice'

case('history')
write(*,*)'history is ur choice'

case('astronomy')
write(*,*)'astronomy is ur choice'

case('literature')
write(*,*)'literatur is ur choice'

case default
write(*,*)'please choose again'

end select
pause

end program