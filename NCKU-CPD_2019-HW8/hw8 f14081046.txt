PROGRAM hw8
IMPLICIT NONE

REAL,DIMENSION(1:1000)::array1 
REAL,DIMENSION(1:1000,1:1000)::array2 
INTEGER::i 
INTEGER::j 
INTEGER::k 
INTEGER::ierror 
CHARACTER(len=15)::filename 
INTEGER::row 
INTEGER::col 
REAL::average_row 
REAL::avreage_col 
REAL::sum_row=0  
REAL::sum_col=0   
open(8,FILE='kkbox.txt',STATUS='OLD',ACTION='READ',IOSTAT=ierror) 
IF(ierror==0) THEN 
 READ(8,*,IOSTAT=ierror)array1 
 IF(ierror<=0) THEN 
  row=array1(1) 
  col=array1(2) 
  k=3         
  WRITE(*,*)"The array's row is ",row,"column is ",col 
  DO i=1,row
   DO j=1,col     
    array2(i,j)=array1(k)
    k=k+1 
   END DO 
  END DO  
 ELSE
  WRITE(*,*)'THE INPUT DATA HAS INVALID VALUE.' 
 END IF
 WRITE(*,100)((array2(i,j),j=1,col),i=1,row)
 100 FORMAT(7F6.1)
 DO i=1,row
  sum_row=0
  DO j=1,col
  sum_row=sum_row+array2(i,j)
  END DO
  WRITE(*,*)'the sum of',i,'row is',sum_row
  WRITE(*,*)'the avreage of',i,'row is',sum_row/real(col) 
 END DO
 DO j=1,col
  sum_col=0
  DO i=1,row
  sum_col=sum_col+array2(i,j)
  END DO
  WRITE(*,*)'the sum of',j,'col is',sum_col
  WRITE(*,*)'the avreage of',j,'col is',sum_col/real(row)
 END DO      
ELSE
 WRITE(*,*)'OPEN FAIL' 
END IF 

close(8) 

STOP
end program