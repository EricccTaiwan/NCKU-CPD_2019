program test
implicit none

character(len=20)::lesson !�n�O�o��len�����ק_�hlen�w�]�Ȭ�1�A�ҥH�n��len>��J���ȡAenglish�����~��QŪ��

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