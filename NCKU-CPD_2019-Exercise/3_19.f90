program ADAD
implicit none
REAL::THETA,y,i=0,g
write(*,*)'plz enter ur x'
do
READ(*,*)THETA
IF(THETA>=1)then
write(*,*)'fuck'
exit
end if   !�i���i�H�P�ɵ�������̫ܳ�@���r

Y=LOG(1/(1-THETA))
WRITE(*,*)Y

END DO


END PROGRAM
