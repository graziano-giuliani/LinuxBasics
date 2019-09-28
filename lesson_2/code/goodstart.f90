program badprog
  implicit none
  integer , parameter :: ni = 100
  integer , parameter :: nj = 100
  integer , parameter :: nk = 10
  real , dimension(ni,nj,nk) :: a , b , c , d
  integer , parameter :: nloop = 1000
  integer :: iloop
  character(len=13) :: ps = 'Loop index = '

  a(:,:,:) = 2.0
  b(:,:,:) = 3.0
  d(:,:,:) = 1.0
  do iloop = 1 , nloop
    call msum(100,100,10,a,b,c,d)
    d(:,:,:) = c(:,:,:)
    print *, ps, iloop
  end do
  write(*,*) sum(c)/product(shape(c))

  contains

  subroutine msum(ii,jj,kk,aa,bb,cc,dd)
    implicit none
    real , dimension(:,:,:) , intent(in) :: aa , bb
    real , dimension(:,:,:) , intent(out) :: cc , dd
    integer :: ii , jj , kk
    integer :: i , j , k
    do k = 1 , kk
      do j = 1 , jj
        do i = 1 , ii
          cc(i,j,k) = bb(i,j,k) + aa(i,j,k) + dd(i,j,k)
        end do
      end do
    end do
  end subroutine msum

end program badprog

! vim: tabstop=8 expandtab shiftwidth=2 softtabstop=2
