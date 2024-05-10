program funxy
implicit none
real::x,y,new_x,new_y
write(*,*)'please enter x'
read(*,*)x
write(*,*)'please enter y'
read(*,*)y

outer: if (x>=0)then     !x>0跑這邊的程式碼
      new_x=x
        inner: if (y>=0)then
	      new_y=y
	    else		
	      new_y=y**2		  
        end if inner
    else                !x<0跑這邊的所以下面也要打Y的程式碼不然沒東西可以跑
	  new_x=x**2
	   if (y>=0)then
	      new_y=y
	   else		
	      new_y=y**2
	

		end if 	 

end if outer

write(*,*)'the value of function',new_x+new_y
pause
end program

