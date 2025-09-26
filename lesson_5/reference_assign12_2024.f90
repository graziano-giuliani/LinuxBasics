! =========================================
!
! Exercise 12 reference implementation 2024
!
! Author : Graziano Giuliani
! Date   : Thu 24 Oct 2024 06:23:02 PM CEST
!
! =========================================
!
program assignment12
  use iso_fortran_env
  implicit none
  integer , parameter :: wp = real64
  real(kind=wp) , parameter :: t0 = 0.0_wp
  real(kind=wp) , parameter :: t1 = 30.0_wp
  real(kind=wp) , parameter :: x0 = 1.0_wp
  real(kind=wp) , parameter :: dt = 0.1_wp
  real(kind=wp) :: t , x , x1 , xexact
  integer :: i , n , iunit

  n = (t1-t0)/dt
  t = t0
  x = x0

  open(newunit=iunit,file='euler.txt',status='replace',action='write')
  write(iunit,*) t , x , x0 , 0.0
  do i = 1 , n
    t = t + dt
    x = x + yprime(x,t) * dt
    xexact = x0*exp(-t)
    write(iunit,*) t , x , xexact , xexact-x
  end do
  close(iunit)

  t = t0
  x = x0
  open(newunit=iunit,file='midpoint.txt',status='replace',action='write')
  write(iunit,*) t , x , x0 , 0.0
  do i = 1 , n
    t = t + dt
    x1 = x + yprime(x,t) * dt * 0.5
    x = x + yprime(x1,t) * dt
    xexact = x0*exp(-t)
    write(iunit,*) t , x , xexact , xexact-x
  end do
  close(iunit)


  contains

  real(kind=wp) function yprime(x,t)
    implicit none
    real(kind=wp) , intent(in) :: x , t ! Time unused here !
    yprime = -x
  end function yprime

end program assignment12
