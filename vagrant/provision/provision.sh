echo -----------------------------------
echo PREPARE VSCODE
echo -----------------------------------
sudo apt-get -y install curl
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

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

echo -----------------------------------
echo INSTALL MELD
echo -----------------------------------
sudo apt-get -y install meld
echo "#! /bin/sh" > /usr/local/bin/git-meld
echo "meld $2 $5" >>  /usr/local/bin/git-meld
chown vagrant:vagrant /usr/local/bin/git-meld
chmod u+x /usr/local/bin/git-meld

echo -----------------------------------
echo INSTALL VSCODE
echo -----------------------------------
sudo apt-get -y install code




