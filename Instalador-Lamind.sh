#!/bin/sh
#Version 1.0
#------
#Instalaçao feita no usuário administrador
# update & upgrade #
sudo apt-get update
sudo apt-get upgrade -y

# Instalaçao de Chaves
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9

# Inclusão de repositorios
sudo add-apt-repository ppa:webupd8team/atom -y
sudo add-apt-repository "deb http://star-www.st-andrews.ac.uk/cran/bin/linux/ubuntu trusty/" -y
sudo add-apt-repository ppa:brightbox/ruby-ng-experimental -y

sudo apt-get update
echo "\n\n Update Completo \n\n"

# Download de Arquivos
sudo wget https://download1.rstudio.org/rstudio-0.99.489-amd64.deb
sudo wget https://julialang.s3.amazonaws.com/bin/linux/x64/0.4/julia-0.4.3-linux-x86_64.tar.gz
tar -vzxf julia-0.4.3-linux-x86_64.tar.gz
echo  "\n\n Donwload Completo \n\n"

# Instalação de bibliotecas
sudo apt-get install libjpeg62 libgsl0ldbl libgsl0-dev
echo  "\n\n Biblioteca Completa \n\n"

# Instalação principal
sudo apt-get install atom build-essential cmake curl ipython3-notebook g++ gcc \
geany gems geogebra gfortran git make nodejs octave python3-matplotlib \
python3-pip  python3-yaml python-dev python-pip python-setuptools \
r-base ruby2.2 ruby2.2-dev ssh subversion texlive-latex-extra unrar vim -y
echo  "\n\n Instalação Principal Completa \n\n"

#Atom plugins
sudo apm install ink julia-client latex-completions language-julia \
language-matlab-octave
echo  "\n\n Atom plugins Completos \n\n"

#julia
cd julia-a2f713dea5/bin/
sudo ln -s -f $PWD/julia /usr/local/bin/
sudo pip install --upgrade pip
sudo pip install jupyter
pip install urllib3[secure]
echo  "\n\n Julia Instalado \n\n"

#Remove arquivos de isntalação
sudo rm julia-0.4.3-linux-x86_64.tar.gz
sudo rm rstudio-0.99.489-amd64.deb
sudo apt-get autoremove
