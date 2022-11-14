#!/bin/bash

# Nom		: Install_DWVA.sh
# Auteur	: Tristan KLIEBER
# Email		: tklieber@myges.fr
# Version	: 1.0

# tester si on est en root
if [ "$USER" != "root" ]
then
	echo "vous n'êtes pas root, merci de relancer le script en root"
	exit
fi

echo "Installation de la DWVA et de ses dépendences"

apt install docker docker.io

docker pull vulnerables/web-dvwa

echo ""
echo "Installation terminée !"
echo ""
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Pour lancer la DWVA entrez :"
echo "docker run --rm -it -p 80:80 vulnerables/web-dvwa"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo ""
echo "Pour accéder à l'interface web allez sur votre navigateur et entrez l'URL suivante :"
echo "http://localhost/setup.php"
