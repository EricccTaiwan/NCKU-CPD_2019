program sdad
implicit none
real::temp 
write(*,*)'please enter ur temp'
read(*,*)temp
  if ( temp >= 103.0 ) then
  write(*,*)'temperature dangerously high'
  else if ( temp >= 99.5 ) then
  write(*,*)'temperature slightly high'
  else if ( temp >= 97.5 ) then
  write(*,*)'temperature normal'
  else
  write(*,*)'temperature below normal'
  end if
  pause

  end program