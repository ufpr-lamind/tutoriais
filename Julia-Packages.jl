# Instalar pacotes do Julia no usuário comum (não no admin)
using Pkg
Pkg.update()
Pkg.add(["IJulia", "Atom", "Plots", "RDatasets", "Images", "ImageMagick", "JuMP", "Ipopt", "Cbc", "Clp", "Pyplot", "CUTEst"])

# Ao instalar esses pacotes, é possível que algum deles apresente erros. Nesse caso pode-se tentar corrigir
# os erros ou remover da lista, mas especifique o motivo e deixa abaixo para que possa ser instalado futuramente.

# O pacote "Qwt" apresenta incompatibilidade com a última versão do Julia 1.1.0 (fev/2019)
