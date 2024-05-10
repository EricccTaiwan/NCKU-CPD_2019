program four
implicit none

integer::y,x

do x=-1,3,1
y=x**2-3*x+2
write(*,*)'the values of equation is',y
end do

end program