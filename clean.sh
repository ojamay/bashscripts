#!/bin/sh
echo "Script de nettoyage d'Ubuntu"
sudo apt-get clean
echo "Les .deb des paquets installés ont été supprimés"
sudo apt-get autoclean
echo "Les .deb des paquets périmés ont été supprimés"
sleep 3
find ~/.cache/.thumbnails -type f -atime +7 -exec rm {} \;
echo "vignettes de plus de 7 jours supprimées"
find ~/snap/gimp/common/.cache/thumbnails -type f -atime +7 -exec rm {} \;
echo "Vignettes de Gimp supprimées"
rm -r -f ~/.local/share/Trash/files/* 
echo "Corbeille vidée"
sleep 3
find ~/ -name '*~' -exec rm {} \;
echo "Fichiers temporaires (terminant par ~) du dossier HOME ont été supprimés"
echo "Nettoyage terminé"
