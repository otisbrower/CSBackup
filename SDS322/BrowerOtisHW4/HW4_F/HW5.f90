! Otis Brower
! UT EID: ODB234
! Assignment 4
! Due Date: 4/16/2015

PROGRAM HW5
  implicit none
  
  type::vector
  	real*8::x,y,z
  end type
  type::particle
  	real*8::x,y,z
  end type
  
  integer::numTS = 50 ! number of timesteps
  integer::args
  integer::vectorSizeX, vectorSizeY, vectorSizeZ, numParticles
  integer::i, j, k
  real*8::xTemp, yTemp, zTemp
  character(80):: velocity = "velocity.dat"
  character(80):: particles = "particles.dat"
  character(80):: tempstr
  character(80):: filename = "results"
  type(vector), allocatable::vectorField(:,:,:)
  type(particle), allocatable::particleList(:)
  integer crap
  
  args = IARGC()
  
  if (args > 0) then
  	call getarg(1, tempstr)
  	read(tempstr(:), '(i4)') numTS
  end if
  
  if (args > 1) then
  	call getarg(2, filename)
  end if
  
  if (args > 2) then
  	call getarg(3, velocity)
  end if
  
  if (args > 3) then
  	call getarg (4, particles)
  end if

  open(10, file = particles)
  open(20, file = velocity)
  write(filename, '(A, "_", I4.4, ".dat")') filename, 0
  open(30, file = filename)

  read(10, *) numParticles
  numParticles = numParticles -1

  allocate(particleList(0:numParticles))
  
  do i = 0, numParticles
     read(10, *) particleList(i)%x, particleList(i)%y, particleList(i)%z
     write(30, '(F12.8, F12.8, F12.8)')particleList(i)%x, &
                particleList(i)%y, particleList(i)%z
  end do
  close(30)
  
  close(10)

  read(20, *) vectorSizeX, vectorSizeY, vectorSizeZ
  vectorSizeX = vectorSizeX -1
  vectorSizeY = vectorSizeY -1
  vectorSizeZ = vectorSizeZ -1

  allocate(vectorField(0:vectorSizeX, 0:vectorSizeY, 0:vectorSizeZ))

  do i = 0, vectorSizeX
     do j = 0, vectorSizeY
        read(20, *) vectorField(i, j, 0:vectorSizez)%x, vectorField(i,j,0:vectorSizeZ)%y, vectorField(i,j,0:vectorSizeZ)%z
     end do
  end do  

  CALL locationUpdate(particleList, vectorField, numTS, filename, numParticles)
  
  deallocate(particleList)
  deallocate(vectorField)
   
END PROGRAM HW5

SUBROUTINE locationUpdate(particleList, vectorField, numTS, filename, numParticles)
	implicit none

	type::vector
  	real*8::x,y,z
  end type
  type::particle
  	real*8::x,y,z
  end type
	
	integer:: i, j, numParticles, numTS
	type(vector), allocatable:: vectorField(:,:,:)
	type(particle), allocatable:: particleList(:)
	character(:), allocatable:: filename
	real*8 :: xTemp, yTemp, zTemp
	
	do i = 1, numTS
   if(mod(i, 10) == 0)then
     write(filename, '(A, "_", I4.4, ".dat")') filename, i
     open(30, file = filename)
     do j = 0, numParticles
       xTemp = particleList(j)%x + vectorField(floor(particleList(j)%x), floor(particleList(j)%y), floor(particleList(j)%z))%x
       yTemp = particleList(j)%y + vectorField(floor(particleList(j)%x), floor(particleList(j)%y), floor(particleList(j)%z))%y
       zTemp = particleList(j)%z + vectorField(floor(particleList(j)%x), floor(particleList(j)%y), floor(particleList(j)%z))%z
       particleList(j)%x = xTemp
       particleList(j)%y = yTemp
       particleList(j)%z = zTemp
       write(30, '(F12.8, F12.8, F12.8)') particleList(j)%x, &
                 particleList(j)%y, particleList(j)%z
    end do
    close(30)
    else
      do j = 0, numParticles
       xTemp = particleList(j)%x + vectorField(floor(particleList(j)%x), floor(particleList(j)%y), floor(particleList(j)%z))%x
       yTemp = particleList(j)%y + vectorField(floor(particleList(j)%x), floor(particleList(j)%y), floor(particleList(j)%z))%y
       zTemp = particleList(j)%z + vectorField(floor(particleList(j)%x), floor(particleList(j)%y), floor(particleList(j)%z))%z
       particleList(j)%x = xTemp
       particleList(j)%y = yTemp
       particleList(j)%z = zTemp
      end do
    end if
  end do
END SUBROUTINE
