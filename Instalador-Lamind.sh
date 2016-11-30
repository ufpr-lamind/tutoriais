#!/bin/sh
#Version 1.45 nov/30/16
#------
#Instalaçao feita no usuário administrador


# Instalaçao de Chaves
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9

# Inclusão de repositorios
sudo add-apt-repository ppa:webupd8team/atom -y
sudo add-apt-repository "deb http://star-www.st-andrews.ac.uk/cran/bin/linux/ubuntu trusty/" -y
sudo add-apt-repository ppa:brightbox/ruby-ng-experimental -y

sudo apt-get update
echo "\n\n Update Completo \n\n"

# Download de Arquivos
cd $HOME
sudo wget https://download1.rstudio.org/rstudio-0.99.903-amd64.deb
sudo wget https://julialang.s3.amazonaws.com/bin/linux/x64/0.4/julia-0.4.6-linux-x86_64.tar.gz
sudo wget https://julialang.s3.amazonaws.com/bin/linux/x64/0.5/julia-0.5.0-linux-x86_64.tar.gz
sudo wget https://ufpr-lamind.github.io/files/Launcher_Lamind.sh
echo  "\n\n Donwload Completo \n\n"

# Instalação de bibliotecas
sudo apt-get install libjpeg62 libgsl0ldbl libgsl0-dev
echo  "\n\n Biblioteca Completa \n\n"

# Instalação principal
sudo apt-get install atom build-essential cmake curl ipython3-notebook g++ gcc \
geany gems geogebra gfortran git make nodejs octave python3-matplotlib \
python3-pip  python3-yaml python-dev python-pip python-setuptools \
r-base ruby2.2 ruby2.2-dev ssh subversion texlive-latex-extra texlive-full unrar vim -y
echo  "\n\n Instalação Principal Completa \n\n"

# Instalações secundarias
## Atom plugins
sudo apm install ink julia-client  language-julia language-matlab-octave \
latex-completions
sudo gem install jekyll
echo  "\n\n Instalação Secundaria Completa \n\n"


## julia
tar -vzxf julia-0.4.6-linux-x86_64.tar.gz
tar -vzxf julia-0.5.0-linux-x86_64.tar.gz
ver_old=julia-2e358ce975
ver_current=julia-3c9d75391c
cd $ver_current/bin
sudo ln -s -f $PWD/julia /usr/local/bin/
cd $HOME
cd $ver_old/bin
sudo ln -s -f $PWD/julia /usr/local/bin/julia-0.4.6

sudo pip install --upgrade pip
sudo pip install jupyter
pip install urllib3[secure]
echo  "\n\n Julia Instalado \n\n"

## Launcher_Lamind
sudo mv ~/Launcher_Lamind.sh /home/lamind/Launcher_Lamind.sh
sudo chmod a+x /home/lamind/Launcher_Lamind.sh
echo  "\n\n Launcher_Lamind Instalado \n\n"

#Remove arquivos de instalação
sudo rm ~/julia-0.4.6-linux-x86_64.tar.gz
sudo rm ~/julia-0.5.0-linux-x86_64.tar.gz
sudo rm ~/rstudio-0.99.903-amd64.deb
sudo apt-get autoremove
echo  "\n\n Arquivos de instalação removidos \n\n"
