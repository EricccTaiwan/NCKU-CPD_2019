program test
implicit none

real::t   !tension on the cable
real::w=200   !weight of the object
real::lc=8  !length of the cable
real::lp=8  !length of the pole
real::d=0.9   !distance along the pole
real::i   !for the use of do loop
real::min_t=10000

do i=10 , 70
 d=d+0.1
 t=(w*lc*lc)/(d*sqrt(lp**2-d**2))
 write(*,100)d
 100 format('when the d is',f3.1)
 write(*,*)'the tension is',t
 if (min_t>t)then  !當最小值大於t
  min_t=t          !將t的值給Min_t 
 end if
 
end do
 
write(*,*)'the min tension is',min_t  
                   
end program