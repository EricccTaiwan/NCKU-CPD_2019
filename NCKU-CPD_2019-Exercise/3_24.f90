program adad

implicit none

real::db
real::p1=1
real::p2=0.5
integer::i

  do  i = 10 , 200 , 5
   p2=p2+0.5 
   db=10*log10(p2/p1)
   write(*,*)'when p2 is',p2,'watt db is',db

  end do


END PROGRAM
