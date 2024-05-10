program test


real::theta_1  !角度要換成弧度
real::theta_2
real::n1
real::n2
real::rad_1
real::rad_2
real::sin_2
write(*,*)'enter n1'
read(*,*)n1

write(*,*)'enter n2'
read(*,*)n2

write(*,*)'enter theta_1'
read(*,*)theta_1

rad_1=theta_1*3.1415926/180.
sin_2=(n1/n2)*sin(rad_1)
if (sin_2 > 1.)then
write(*,*)'errorrrrrr'
else
rad_2=asin(sin_2)
theta_2=rad_2*180./3.1415926
write(*,*)'theta_2',theta_2
end if

end program

