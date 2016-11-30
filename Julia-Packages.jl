#Versao2.3
# No Julia no usuário comum
##Misc
Pkg.clone("git://github.com/kbarbary/TimeIt.jl.git")
Pkg.update()
Pkg.add("Gadfly")
Pkg.add("IJulia")
Pkg.build("IJulia")
Pkg.clone("https://github.com/optimizers/CUTEst.jl")
Pkg.checkout("CUTEst", "develop")
Pkg.add("Atom")
Pkg.add("Winston")
##Plots
Pkg.add("Plots")
Pkg.add("GR")
Pkg.add("PyPlot")
Pkg.build("PyCall")
Pkg.checkout("Plots", "dev")
Pkg.add("Immerse")
Pkg.add("UnicodePlots")
Pkg.add("Qwt")
Pkg.add("RDatasets")
Pkg.add("Images")
Pkg.add("ImageMagick")
##JuMP
Pkg.add("JuMP")
Pkg.add("Ipopt")
Pkg.add("Cbc")
Pkg.add("Clp")
