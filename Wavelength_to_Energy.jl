function Wavelength_to_Energy(Wavelength_nm)
    # Variable Initialization
    Wavelength_eV_Vector = Vector{Float64}()
    # Calculate the Energy in eV from the Wavelength in nm (E = (c*h)/lambda)
    for i in 1:size(Wavelength_nm)[1]
        Wavelength_eV = 1239.84193/(Wavelength_nm[i])
        push!(Wavelength_eV_Vector, Wavelength_eV)
    end
    return Wavelength_eV_Vector
end
