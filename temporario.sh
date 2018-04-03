cd /var/lib/apt/lists/
sudo rm *
sudo rm -r *
sudo apt-get update
sudo apt-get upgrade -y
cd $HOME

sudo apt-get install openjdk-8-jdk
sudo R CMD javareconf

sudo apt-get install libapparmor-dev libpoppler-glib-dev libssl-dev libcurl4-openssl-dev libxml2-dev libwebp-dev libpoppler-cpp-dev libmagick++-dev libtesseract-dev libleptonica-dev mesa-common-dev libglu1-mesa-dev freeglut3-dev mesa-common-dev
