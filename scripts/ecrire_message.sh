#!/bin/bash

# Vérification des arguments
if [ "$#" -ne 3 ]; then
    echo "Erreur : Mauvais arguments."
    echo "Usage : ./ecrire_message.sh <expediteur> <destinataire> \"Mon message ultra secret\""
    exit 1
fi

EXPEDITEUR=$1
DESTINATAIRE=$2
MESSAGE_TEXTE=$3

USER_DIR_EXP="./utilisateurs/$EXPEDITEUR"
USER_DIR_DEST="./utilisateurs/$DESTINATAIRE"

# Vérifier si les dossiers existent
if [ ! -d "$USER_DIR_EXP" ] || [ ! -d "$USER_DIR_DEST" ]; then
    echo "Erreur : L'expéditeur ou le destinataire n'existe pas."
    exit 1
fi

echo "=== Composition d'un message sécurisé de $EXPEDITEUR pour $DESTINATAIRE ==="

# ÉCréer un environnement GPG temporaire isolé
export GNUPGHOME=$(mktemp -d -t gpg-XXXXXX)

# Importer la clé privée de l'expéditeur et la clé publique du destinataire dans cet environnement isolé
gpg --batch --import "$USER_DIR_EXP/${EXPEDITEUR}_gpg_private.key" 2>/dev/null
gpg --batch --import "$USER_DIR_DEST/${DESTINATAIRE}_gpg_public.key" 2>/dev/null

# Créer le fichier temporaire en clair
echo "$MESSAGE_TEXTE" > text_brut.txt

# Chiffrement et signature
echo "Chiffrement et signature en cours (Environnement Isolé)..."

gpg --batch --yes --armor \
    --recipient "$DESTINATAIRE@ecole.local" \
    --local-user "$EXPEDITEUR@ecole.local" \
    --trust-model always \
    --sign --encrypt \
    --output "$USER_DIR_DEST/message_pour_${DESTINATAIRE}.gpg" \
    text_brut.txt

# Nettoyage complet 
rm text_brut.txt
rm -rf "$GNUPGHOME"

echo "Message signé, chiffré et déposé dans le dossier de $DESTINATAIRE !"
