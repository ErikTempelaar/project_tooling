apt-get update && apt-get -y apt-get -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confnew" upgrade && apt-get -y autoremove

echo -----------------------------------
echo INSTALL GIT
echo -----------------------------------
sudo apt-get -y install git

echo -----------------------------------
echo INSTALL COMPILER
echo -----------------------------------
sudo apt-get -y install clang

sudo update-alternatives --install /usr/bin/cc cc /usr/bin/clang 100
sudo update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++ 100

