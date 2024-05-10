program test
implicit none

real::mtbf
real::s=0
real::system
integer::n
integer::i

write(*,*)'plz enter the amount'
read(*,*)n

write(*,*)'plz enter ur mtbf'

do i = 1,n
 read(*,*)mtbf
 
 s=s+(1./mtbf)

end do
system=1./s
write(*,*)'the ans',system

pause
end program

