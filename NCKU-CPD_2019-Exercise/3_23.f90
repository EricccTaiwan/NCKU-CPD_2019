program test
implicit none

integer::m_a=1
integer::m_b=1
integer::i ! a ªº
integer::k

do i = 180 , 1440 , 180 
   m_a=1*2**(i/60)
   write(*,*)'media a after',i,'min is',m_a
end do

do k = 180 , 1440 , 180
   m_b=1*2**(k/90)
   write(*,*)'media b after',k,'min is',m_b
end do



end program