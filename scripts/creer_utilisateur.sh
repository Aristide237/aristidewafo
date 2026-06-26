#!/bin/bash

if [ -z "$1" ]; then
    echo "Erreur : Tu dois spécifier un nom d'utilisateur. Exemple : ./creer_utilisateur.sh alice"
    exit 1
fi

USER_NAME=$1
CA_DIR="./ca"
USER_DIR="./utilisateurs/$USER_NAME"

echo "=== Création de l'utilisateur : $USER_NAME ==="

# Créer le répertoire de l'utilisateur
mkdir -p "$USER_DIR"

echo "Génération des clés GPG..."

# On force la création d'un couple de clés RSA sans mot de passe pour le script
gpg --batch --passphrase "" --quick-gen-key "$USER_NAME@ecole.local" default default

# On exporte les clés textuellement dans le dossier de l'utilisateur
gpg --armor --export "$USER_NAME@ecole.local" > "$USER_DIR/${USER_NAME}_gpg_public.key"
gpg --armor --export-secret-keys "$USER_NAME@ecole.local" > "$USER_DIR/${USER_NAME}_gpg_private.key"

# Générer la clé privée OpenSSL de l'utilisateur
echo "Génération de la clé privée OpenSSL..."
openssl genrsa -out "$USER_DIR/${USER_NAME}.key" 2048

# Créer une demande de signature de certificat (CSR)
echo "Création de la demande de certificat (CSR)..."
openssl req -new -key "$USER_DIR/${USER_NAME}.key" \
    -out "$USER_DIR/${USER_NAME}.csr" \
    -subj "/C=FR/ST=IdF/L=Paris/O=Ecole/CN=$USER_NAME"

# Signer le certificat de l'utilisateur avec la CA
echo "Signature du certificat par la CA..."
openssl x509 -req -in "$USER_DIR/${USER_NAME}.csr" \
    -CA "$CA_DIR/ca.crt" \
    -CAkey "$CA_DIR/ca.key" \
    -CAcreateserial \
    -out "$USER_DIR/${USER_NAME}.crt" \
    -days 365 -sha256

echo "=== Utilisateur $USER_NAME créé avec succès ! ==="
