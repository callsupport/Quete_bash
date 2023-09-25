# Demander à l'utilisateur la limite
read -p "Entrez une limite : " limite

# Vérifier si la limite est un nombre entier positif
if [[ ! $limite =~ ^[0-9]+$ ]]; then
    echo "La limite doit être un nombre entier positif."
    exit 1
fi

# Afficher les valeurs de 1 à la limite
for ((i = 1; i <= limite; i++)); do
    echo $i
done
