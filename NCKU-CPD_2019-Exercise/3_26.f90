program test
implicit none

integer::x
integer::i=1
integer::n=0
real::m

write(*,*)'plz enter ur x'

 do
   read(*,*)x   !read�n�bdo�̭��o��x�Ȥ~��]�ܦh��A��x�p��0�K�|exit
   if(x<=0)exit
   n=n+1
   i=i*x
 end do

m=real(i)**(1/real(n))

write(*,*)'the geometric mean',m

end program

