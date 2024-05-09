program scratch

implicit none

integer::i,j,variable_x,variable_y,x,k
real::ans

open(unit=8,status='scratch')
do i=1,20
write(8,*)i
end do
do j=1,9
backspace(unit=8)
end do
read(8,*)i
variable_x=i
write(*,*)variable_x

do k=1,7
backspace(unit=8)
end do
read(8,*)i
variable_y=i
write(*,*)variable_y
ans=variable_x/variable_y
write(*,*)"variable_x/variable_y=",ans
end program
