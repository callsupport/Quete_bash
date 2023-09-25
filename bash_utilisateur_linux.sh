# Création du dossier test-dossier dans le dossier courant
mkdir -p test-dossier

# Création des fichiers avec les permissions spécifiées

#fichier1 : lecture/écriture uniquement pour l'utilisateur courant
touch test-dossier/fichier1
chmod 600 test-dossier/fichier1  

#fichier2 : lecture seule pour tous
touch test-dossier/fichier2
chmod 444 test-dossier/fichier2  


#fichier3 : lecture/écriture/exécution pour l'utilisateur, lecture/exécution pour groupe et autres
touch test-dossier/fichier3
chmod 755 test-dossier/fichier3  

# Affichage du contenu du dossier
ls -l test-dossier
