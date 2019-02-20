# Instalar pacotes do Julia no usuário comum (não no admin)
using Pkg
Pkg.update()
Pkg.add(["IJulia", "Atom", "Plots", "RDatasets", "Images", "ImageMagick", "JuMP", "Ipopt", "Cbc", "Clp", "Pyplot"])

# Os pacotes "Qwt" e "CUTEst" apresentaram incompatibilidade com a última versão do Julia 1.1.0 (fev/2019)
