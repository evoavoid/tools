# Instalador automatizado de conky
# Coded by evo

echo "INSTALADOR DE CONKY PARA UBUNTU "
wget http://launchpadlibrarian.net/340091846/realpath_8.26-3ubuntu4_all.deb
wget https://github.com/teejee2008/conky-manager/releases/download/v2.4/conky-manager-v2.4-amd64.deb
apt install gdebi
gdebi realpath_8.26-3ubuntu4_all.deb
gdebi conky-manager-v2.4-amd64.deb

echo " INSTALACION COMPLETADA "
