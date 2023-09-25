#Le script demande quel dossier l'utilisateur souhaite sauvegarder
read -p "Quel dossier souhaitez-vous sauvegarder ? " dossier

# Si le dossier n'existe pas, il affiche un message d'erreur
if [[ ! -d $dossier ]]; then
    echo "Le dossier $dossier n'existe pas."
    exit 1
fi

#Le script demande ensuite où sauvegarder le fichier
read -p "Où souhaitez-vous sauvegarder le fichier ? " destination

#Le script demande confirmation de sauvegarder à l'endroit choisit
read -p "Voulez-vous sauvegarder le dossier $dossier dans $destination ? [o/n] " reponse

#Le cas échéant, le script créé le dossier
if [[ $reponse =~ ^[oO]$ ]]; then
    mkdir -p $destination
    cp -r $dossier $destination
fi

#Le script affiche un message quand la sauvegarde est correctement effectuée
echo "La sauvegarde de $dossier dans $destination est effectuée."

#Le script demande si l'utilisateur veux sauvegarder un autre dossier
read -p "Voulez-vous sauvegarder un autre dossier ? [o/n] " reponse







