PROGRAM SD
IMPLICIT NONE

INTEGER::I,j
real::ans
LOOP1 :DO I =1,10
LOOP2 :DO J=1,10
ANS=sqrt(real(i*j))
write(*,100)i,j,ans
100 format ('sqrt(',I2,'*',I2,')=',f10.7)
end DO loop2
end DO loop1 

end program