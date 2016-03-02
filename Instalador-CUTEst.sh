#!/bin/bash
#Versao1.0
#----
#Instalação feito no usuário comum

#Install brew from linuxbrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
# We need to add $HOME/.linuxbrew/bin to our PATH
echo 'export PATH="$HOME/.linuxbrew/bin:$PATH"' >> $HOME/.bashrc
source $HOME/.bashrc
# Now we need check our brew
brew doctor
# Let's to cutest
brew tap optimizers/cutest
brew install cutest --HEAD
brew install mastsif --HEAD
for f in archdefs mastsif sifdecode cutest; do \
  echo "source $(brew --prefix $f)/$f.bashrc" >> \
  $HOME/.bashrc; \
done
echo 'export LD_LIBRARY_PATH="$HOME/.linuxbrew/lib:$LD_LIBRARY_PATH"' >> $HOME/.bashrc
source $HOME/.bashrc

# If you want only CUTEst, stop Homebrew.Else,if you want CUTEst.jl, you must
#install some packages in Julia:
#Pkg.clone("https://github.com/optimizers/CUTEst.jl")
#Pkg.checkout("CUTEst", "develop")

# And, for testing CUTEst `Pkg.test("CUTEst")`
