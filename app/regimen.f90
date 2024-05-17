program regimen

    implicit none

    !variables
    real :: D
    real :: v
    real :: densidad
    real :: viscosidad
    real :: Reynolds

    print *, 'Ingrese valor de diametro de la tuberia (m): '
    read(*,*) D

    print *, 'Ingrese velocidad del fluido (m/s): '
    read (*,*) v

    print *, 'Ingrese densidad (kg/ms): '
    read (*,*) densidad

    print *, 'Ingrese viscosidad del fluido (kg/m3): '
    read (*,*) viscosidad

    Reynolds = ((v*D*densidad)/viscosidad)

    print *, 'El numero de Reynolds es: ', Reynolds

    if (Reynolds > 2000.00) then
        print *, '******************************'
        print *, '*** El flujo es turbulento ***'
        print *, '******************************'
    else
        print *, '***************************'
        print *, '*** El flujo es laminar ***'
        print *, '***************************'   
    endif     

end program regimen

