! Otis Brower
! UT EID: ODB234
! Assignment 2
! Due Date: 3/5/2015

PROGRAM hw2
  implicit none
  
  type::vector
  	real*8::x,y
  end type
  type::particle
  	real*8::x,y
  end type
  
  integer::numTS ! number of timesteps
  integer::i, j, k !random place holder variables
  real*8 ::xTemp, yTemp
  type(vector), dimension(100,100)::vectorField !array for velocity map
  type(particle), dimension(100)::particles !array for particle list
  real*8, dimension(200)::lineTemp !temp array to read in read in lines from velocty.dat correctly
  
  open(10, file = 'particles.dat') !open particles file
  open(30, file = 'results.dat') !open/create results file
  
  read (10, *) numTS !read in number of timesteps
  
  do i=1, 100
  	read(10, *) particles(i)%x, particles(i)%y !read in each particle starting location
  	write (30, '(A, I3,A, F12.8, A, F12.8, A)') "t= 0,   p=", i,"  (", particles(i)%x, ",", particles(i)%y, ")" !write t0 to results file
  end do
  
  close(10) !close particle file

  open (20, file = 'velocity.dat') !open velocity file

  do i = 1, 100
  	k = 1
    read(20, *) lineTemp(1:200) !read line of velocity file into temp array
    do j = 1, 200, 2
      vectorField(k, i)%x = lineTemp(j) !place x velocities into vector field
      vectorField(k, i)%y = lineTemp(j+1) !place y y velocities into vector field
      k = k + 1
    end do
  end do
  close(20) !close velocity file
  
  ! let the tiem stepping begin
  do i = 1, 50
  	do j = 1, 100
  		xTemp = particles(j)%x + vectorField(floor(particles(j)%x), floor(particles(j)%y))%x
  		yTemp = particles(j)%y + vectorField(floor(particles(j)%x), floor(particles(j)%y))%y
  		particles(j)%x = xTemp
  		particles(j)%y = yTemp
  		write (30, '(A, I2, A , I3,A, F12.8, A, F12.8, A)') "t=", i, ",   p=", j,"  (", particles(j)%x, ",", particles(j)%y, ")"
  	end do
  end do !end of time step.
  
  close (30)
  
END PROGRAM hw2

