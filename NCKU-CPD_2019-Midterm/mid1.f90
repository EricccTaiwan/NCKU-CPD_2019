program test
implicit none
real::x       !輸入的x值
integer::k=0  !輸入的總個數
real::y       !對應y(x)的值
do
 read(*,*)x
 k=k+1        !計算總共輸入幾個x
  if(x>=1)then !x大於或等於1不合顯示下列文字
   write(*,*)'Value is illegal'
  else        !當x小於1，算是成立
   y=log(1/(1-x))
   write(*,100)x
   100 format(F8.3) 
   write(*,200)y
   200 format(F8.3)
    if(k==7)exit  !當總共輸入7個數，結束do迴圈
  end if
end do
write(*,150)k
150 format (I3)
end program

