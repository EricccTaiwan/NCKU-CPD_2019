program sksksk
implicit none

integer::i,y

write(*,*)'please enter ur value'

do i=1,50
 if(mod(i,2)==1)cycle
 y = i**2
 write(*,*)'the square of',i,'is',y
 
 
end do

end program
