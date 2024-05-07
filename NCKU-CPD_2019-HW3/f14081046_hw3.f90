program test
implicit none
integer::x
integer::y=0
integer::n=1
real::bar
do
read(*,*)x
if(x<0) exit
n=n*x
y=y+1

end do
bar=real(n)**(1/real(y))
write(*,*)'geometric mean',bar
end program
