module regimenh

   implicit none
   real, parameter :: R=8.31

contains

   subroutine Reynolds(d, v, densidad, viscosidad, Re)
      real :: D !! Diametro
      real :: v
      real :: densidad
      real :: viscosidad
      real :: Re

      Re = ((v*D*densidad)/viscosidad)
   end subroutine Reynolds

end module regimenh
