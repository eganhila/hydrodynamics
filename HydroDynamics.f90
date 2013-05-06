program HydroDynamics

    use CreateWorld
    use FindNeighbors
    use TimeIntegrate
    use OutputData

    implicit none

    integer, parameter  :: T = 10
    integer, parameter :: N = 8
    real(8) :: positions(3, N), velocities(3, N), accelerations(3, N)
    real(8) :: distances(3, N**2)
    integer :: i

    call initiate_system(positions, velocities, accelerations)
    do i = 1, T
        call find_neighbors(positions, distances)
        call update(positions, velocities, accelerations)
        call output_data(positions)
    end do

end program
