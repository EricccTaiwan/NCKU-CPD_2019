program test
implicit none
real::x       !��J��x��
integer::k=0  !��J���`�Ӽ�
real::y       !����y(x)����
do
 read(*,*)x
 k=k+1        !�p���`�@��J�X��x
  if(x>=1)then !x�j��ε���1���X��ܤU�C��r
   write(*,*)'Value is illegal'
  else        !��x�p��1�A��O����
   y=log(1/(1-x))
   write(*,100)x
   100 format(F8.3) 
   write(*,200)y
   200 format(F8.3)
    if(k==7)exit  !���`�@��J7�ӼơA����do�j��
  end if
end do
write(*,150)k
150 format (I3)
end program

