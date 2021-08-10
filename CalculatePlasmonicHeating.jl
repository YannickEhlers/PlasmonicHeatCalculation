# Add packages
using Pkg
#Pkg.add("PyCall")
#Pkg.add("LorentzDrudeMetals")
#Pkg.add("Plots")
#Pkg.add("GR")
#Pkg.add("PyPlot")
#Pkg.add("Gadfly")

# Load packages
using PyCall
using LorentzDrudeMetals
using Plots

# Load functions
include("Wavelength_to_Energy.jl")

# Function Plasmonic Heating
function PlasmonicHeating(LaserWavelengthStart_nm, LaserWavelengthEnd_nm)

    # Collection of supplied function variables
    LaserWavelengths_nm = collect(range(LaserWavelengthStart_nm,
                                stop = LaserWavelengthEnd_nm,
                                step = 1))
    # Use function defined in Wavelength_to_Energy.jl
    LaserWavelengths_eV = Wavelength_to_Energy(LaserWavelengths_nm)

    print(LorentzDrudeMetals.Au[LaserWavelengths_eV])
end
