module UpdatePositions

    implicit none
    private

    public update_positions
    public update_velocities
    public update_accelarations

contains

    subroutine update_positions(positions, velocities, accelerations)

        real(8), intent(inout) :: positions(:, :), velocities(:, :), accelerations(:, :)

    end subroutine

    subroutine update_velocities(positions, velocities, accelerations)

        real(8), intent(inout) :: positions(:, :), velocities(:, :), accelerations(:, :)
    
    end subroutine

    subroutine update_accelerations(positions, velocities, accelerations)

        real(8), intent(inout) :: positions(:, :), velocities(:, :), accelerations(:, :)
    
    end subroutine

end module
