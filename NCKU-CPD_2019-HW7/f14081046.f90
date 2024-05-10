PROGRAM TEST
implicit none

integer::positive=0
integer::zero=0
integer::negative=0
integer::i,j
real::ierror
real,dimension(-6:6,0:7)::array
open(unit=10,file='cclemon.txt',status='old',action='read',iostat=ierror)
if(ierror==0)then
read(10,*,iostat=ierror)array
end if

do i = -6,6
 do j = 0,7
  if(array(i,j)>0)then
   positive=positive+1

  else if (array(i,j)<0)then
   negative=negative+1
  else
   zero=zero+1
  end if
 end do
end do

write(*,*)'positive numbers =',positive
write(*,*)'negative numbers =',negative
write(*,*)'zero numbers =',zero

end program
