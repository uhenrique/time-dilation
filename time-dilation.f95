program time_dilation
    !
    !   Purpose:
    !       This program calculates the time dilation.
    !   
    !   Record of revisions:
    !       Date        Programmer      Description of change
    !       ====        ==========      =====================
    !       31/10/2023  Ulissis         Original code
    !
    !   Variables:
    !       Name        Type            Description (Range)
    !       ====        ====            ==================
    !       betha       real            velocity in fraction of c
    !       t2          real            proper time
    !       t1          real            dilated time
    !       betha_max   integer         maximum velocity in fraction of c
    !
    implicit none
    
    real :: betha, t2, t1 
    integer, parameter :: betha_max = 1 

    write(*,"(a)") "Calculation of time dilation."
    write(*,"(a)",advance="no") "Enter with the proper time: "
    read(*,*) t2
    write(*,"(a)",advance="no") "Enter with the velocity in fraction of c: "
    read(*,*) betha

    if ( betha == betha_max ) then
        write(*,"(a)") "The velocity must be less than c."
        stop
    end if

    t1 = t2 / sqrt(1 - betha**2)

    write(*,"(a,f0.16)") "The value of dilated time is: ", t1

end program time_dilation
