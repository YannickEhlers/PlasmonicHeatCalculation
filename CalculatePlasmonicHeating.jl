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

# Load functions
include("Wavelength_to_Energy.jl")

# Function Plasmonic Heating
function PlasmonicHeating(LaserWavelengthStart_nm, LaserWavelengthEnd_nm)

    LaserWavelengths_nm = collect(range(LaserWavelengthStart_nm,
                                stop = LaserWavelengthEnd_nm,
                                step = 1))

    LaserWavelengths_eV = Wavelength_to_Energy(LaserWavelengths_nm)

    print(LaserWavelengths_eV)
    print(LorentzDrudeMetals.Au[LaserWavelengths_eV])
end

PlasmonicHeating(100, 800)
