# Add Julia packages
using Pkg
#Pkg.add("PyCall")
#Pkg.add("Distributions")
#Pkg.add("LorentzDrudeMetals")
#Pkg.add("Plots")

# Load Julia packages
using PyCall
using LorentzDrudeMetals
using Plots

# Load functions from other files
include("Wavelength_to_Energy.jl")

# Function Plasmonic Heating
function PlasmonicHeating(LaserWavelengthStart_nm, LaserWavelengthEnd_nm)

    # Collection of supplied input variables
    LaserWavelengths_nm = collect(range(LaserWavelengthStart_nm,
                                stop = LaserWavelengthEnd_nm,
                                step = 1))

    # Convert Wavelength unit from nm to eV, useing the function defined in
    # Wavelength_to_Energy.jl
    LaserWavelengths_eV = Wavelength_to_Energy(LaserWavelengths_nm)

    # Calculate the dielectric function of a nanoparticle depending of the
    # incident wavelength

    LorentzDrudeMetals.Au[LaserWavelengths_eV]
end
