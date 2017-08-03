#Versao2.5
# No Julia no usuário comum
##Misc
Pkg.update()
Pkg.add("IJulia")
Pkg.build("IJulia")
Pkg.add("Atom")
##Plots
Pkg.add("Plots")
Pkg.add("GR")
withenv("PYTHON" => "") do
    Pkg.add("PyPlot")
    Pkg.build("PyPlot")
end
Pkg.add("Qwt")
Pkg.add("RDatasets")
Pkg.add("Images")
Pkg.add("ImageMagick")
##JuMP
Pkg.add("JuMP")
Pkg.add("Ipopt")
Pkg.add("Cbc")
Pkg.add("Clp")
Pkg.add("CUTEst")

