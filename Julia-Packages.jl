#Versao1.0
#Instalação feito no usuário comum
Pkg.clone("git://github.com/kbarbary/TimeIt.jl.git")
Pkg.update()
Pkg.add("Gadfly")
Pkg.add("IJulia")
Pkg.build("IJulia")
Pkg.clone("https://github.com/optimizers/CUTEst.jl")
Pkg.checkout("CUTEst", "develop")
Pkg.add("Atom")
Pkg.add("Winston")
