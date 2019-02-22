#!/bin/sh
#Version 1.6 fevereiro/19
#------
#Instalaçao feita no usuário administrador


# Instalaçao de Chaves
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9 #chaves para o R e RStudio

# Inclusão de repositorios
sudo add-apt-repository ppa:webupd8team/atom -y #rep para o Atom
sudo add-apt-repository "deb http://star-www.st-andrews.ac.uk/cran/bin/linux/ubuntu trusty/" -y #rep para o R e RStudio
sudo add-apt-repository ppa:brightbox/ruby-ng-experimental -y #rep para o Ruby

# Atualização
sudo apt-get update
sudo apt-get upgrade -y
echo "\n\n Update Completo \n\n"

# Download de Arquivos
sudo wget https://download1.rstudio.org/rstudio-xenial-1.1.463-amd64.deb #ok
sudo wget https://julialang-s3.julialang.org/bin/linux/x64/1.1/julia-1.1.0-linux-x86_64.tar.gz #ok
sudo wget https://raw.githubusercontent.com/ufpr-lamind/tutoriais/master/Julia-Packages.jl #ok
echo  "\n\n Donwload Completo \n\n"

# Instalação de bibliotecas
sudo apt-get install libjpeg62
echo  "\n\n Biblioteca Completa \n\n"

# Instalação principal
sudo apt-get install atom build-essential cmake curl fpc ink python3.6 g++ gcc maxima geany gems geogebra \
gfortran git make nodejs octave python-dev python-pip python3-pip python-setuptools r-base ruby-full \
ssh subversion texlive-latex-extra texlive-full unrar vim python3-notebook python3-matplotlib python3-yaml -y
echo  "\n\n Instalação Principal Completa \n\n"

# Instalações secundarias
## Atom plugins
sudo apm install julia-client language-julia language-matlab-octave \
latex-completions
sudo gem install jekyll
echo  "\n\n Instalação Secundaria Completa \n\n"


## Instalação Julia #ok
# ao alterar a versao baixada sera necessário alterar a parte após julia-
tar -vzxf julia-1.1.0-linux-x86_64.tar.gz #extração
cd julia-1.1.0/bin
sudo ln -s -f $PWD/julia /usr/local/bin/ #cria o atalho Julia
cd $HOME

sudo pip install --upgrade pip
sudo pip install jupyter
sudo pip install urllib3[secure]
echo  "\n\n Julia Instalado \n\n"

#Julia packages
# esse comando garante ao arquivo a permissão necessária para ser executado dentro da interface Julia
sudo chmod a+x Julia-Packages.jl
# ATENÇÃO: os pacotes devem ser instalados na interface Julia
# No terminal digite 'julia' e de enter, a interface do Julia deverá estar aberta
# O comando 'include("Julia-Packages.jl")' deve iniciar as instalações

#Remove arquivos de instalação
sudo rm ~julia-1.1.0-linux-x86_64.tar.gz
sudo rm ~rstudio-xenial-1.1.463-amd64.deb
sudo apt-get autoremove
echo  "\n\n Arquivos de instalação removidos \n\n"

