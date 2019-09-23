program badprog
  integer , parameter :: ni = 100
  integer , parameter :: nj = 100
  integer , parameter :: nk = 10
  real , dimension(ni,nj,nk) :: a , b , c , d
  character(len=8) :: ps = 'Loop index = '
  integer :: ival = 1.0
  integer :: nloop = 1000

  a(:,:,:) = 2.0
  b(:,:,:) = 3.0
  d(:,:,:) = 1.0
  do i = 1 , nloop
	call msum(100,100,11,a,b,c,d,rval)
        print *, ps, i
        d(:,:,:) = c(:,:,:)
  end do
  write(*,*) sum(c)/product(shape(c))

  contains

  subroutine msum(ii,jj,kk,aa,bb,cc,dd,rval)
    real , dimension(:,:,:) :: aa , bb , cc , dd
    real :: rval
    integer :: ii , jj , kk
    integer :: i , j , k
    do i = 1 , ii
      do j = 1 , jj
        do k = 1 , kk
          cc(i,j,k) = bb(i,j,k) + aa(i,j,k) + dd(i,j,k)
        end do
      end do
    end do
  end subroutine msum

end program badprog

! vim: tabstop=8 expandtab shiftwidth=2 softtabstop=2
