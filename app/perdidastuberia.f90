program perdidastuberia
    use regimenh, only: Reynolds
    implicit none

    real :: f
    real :: hf
    real :: L
    real :: Re
    real :: v
    real :: D
    real :: densidad
    real :: viscosidad
    real, parameter :: g = 9.81
    d = 0.05

    print *, 'Ingrese valor del largo de la tuberia (m): '
    read(*,*) L

    print *, 'Ingrese velocidad del fluido (m/s): '
    read (*,*) v

    print *, 'Ingrese densidad (kg/ms): '
    read (*,*) densidad

    print *, 'Ingrese viscosidad del fluido (kg/m3): '
    read (*,*) viscosidad

    call Reynolds(D, V, densidad, viscosidad, Re)
    if (Re > 2000) then
        PRINT *, "ES TURBULENTO"
        f = (0.0791/(Re**0.25))
    else 
        f = 16/Re
    endif 

    hf = 4*f*(L/D)*((v**2)/(2*g))
    print *, 'La perdida por fricción es de: ', hf, ' m'

end program perdidastuberia