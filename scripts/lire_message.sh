!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Erreur : Mauvais arguments."
    echo "Usage : ./lire_message.sh <destinataire> <expediteur>"
    exit 1
fi

DESTINATAIRE=$1
EXPEDITEUR=$2

USER_DIR_DEST="./utilisateurs/$DESTINATAIRE"
USER_DIR_EXP="./utilisateurs/$EXPEDITEUR"

# Vérifier si le message existe dans le dossier du destinataire
FICHIER_MESSAGE="$USER_DIR_DEST/message_pour_${DESTINATAIRE}.gpg"

if [ ! -f "$FICHIER_MESSAGE" ]; then
    echo "Erreur : Aucun message trouvé pour $DESTINATAIRE."
    exit 1
fi

echo "=== Lecture et Vérification du message pour $DESTINATAIRE ==="

#Créer un environnement GPG temporaire isolé
export GNUPGHOME=$(mktemp -d -t gpg-XXXXXX)

# Importer la clé privée du destinataire (pour déchiffrer) 
# et la clé publique de l'expéditeur (pour vérifier la signature)
gpg --batch --import "$USER_DIR_DEST/${DESTINATAIRE}_gpg_private.key" 2>/dev/null
gpg --batch --import "$USER_DIR_EXP/${EXPEDITEUR}_gpg_public.key" 2>/dev/null

#Déchiffrer et vérifier la signature
echo -e "\n--- Résultat du Déchiffrement et de la Signature ---"
gpg --batch --decrypt --trust-model always "$FICHIER_MESSAGE"
echo -e "---------------------------------------------------\n"

#Nettoyage de l'environnement temporaire
rm -rf "$GNUPGHOME"

