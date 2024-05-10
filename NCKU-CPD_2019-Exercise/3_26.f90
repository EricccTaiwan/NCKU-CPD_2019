program test
implicit none

integer::x
integer::i=1
integer::n=0
real::m

write(*,*)'plz enter ur x'

 do
   read(*,*)x   !read要在do裡面這樣x值才能跑很多圈，當x小於0便會exit
   if(x<=0)exit
   n=n+1
   i=i*x
 end do

m=real(i)**(1/real(n))

write(*,*)'the geometric mean',m

end program

