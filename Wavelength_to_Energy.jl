# Define function
function Wavelength_to_Energy(Wavelength_nm)
    # Vector Variable Initialization
    Wavelength_eV_Vector = Vector{Float64}()
    # Loop to calculate the Energy in eV for the supplied wavelength
    for i in 1:size(Wavelength_nm)[1]
        # Wavelength calculation using the formula nm (E = (c*h)/lambda)
        Wavelength_eV = 1239.84193/(Wavelength_nm[i])
        # Add the calculated wavelength to the defined vector
        push!(Wavelength_eV_Vector, Wavelength_eV)
    end
    # Return Calculated Values
    return Wavelength_eV_Vector
end
