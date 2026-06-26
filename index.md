---
layout: default
title: "Aristide WAFO - Cybersecurity Portfolio"
---

# 👋 Aristide WAFO

**Étudiant en Master of engineering - cybersécurité **  
Passionné par le sécurité des sytèmes et réseaux, je developpe des compétences en audit Active Directory, analyse de vulnérabilités et détections d'intrusions.
Motivé et autonome, je souhaite contribuer à des projets concrets en cybersécurité.
 
> Ce portfolio présente mes projets, mes labs et mes outils.

---

## 🧑‍💻 À propos de moi 

- 🎓 Master of Engineering – cybersécurité - SUPINFO  
- 🌍 Basé en Île-de-France  
- 🎯 Intérêt fort pour :  
  - Audit d’infrastructure (Windows / Linux / AD)  
  - Blue Team, SOC, détection & réponse  
  - Administration et sécurité des réseaux  

---

## 🛠️ Compétences techniques

**Systèmes & Réseaux**  
- Active Directory, ADCS, DNS, DHCP
- Administration Linux (Kali)  
- Administration Windows (serveurs, AD de base)  
- VLAN, routage, services réseau de base
- Configuration firewall (iptables)
- Sécurisation des accès
-  Cisco Networking Academy (routing, switching, VLANs)

## Cybersécurité
- Analyse Active Directory (BloodHound, Neo4j)
- Audit Windows (winPEAS, HardeningKitty, Hayabusa)
- Sécurité réseau (VLAN, segmentation, firewalling)
- Scan de vulnérabilité (Nmap)
- Analyse réseau (Wireshark, tcpdump)
- IDS/IPS : Suricata
- Chiffrement & PKI (GPG, OpenSSL, certificats X.509)
- Tests et challenge sécurité (TryHackMe)


**Automatisation & Scripting**  
- Bash (ex : `setup-vlans.sh`)  
- Scripts d’audit / collecte d’informations

**Plateformes & Labs**  
- TryHackMe (SOC, PreSecurity, Blue Team, etc.)  
- Labs personnels (VMware)

---

## 📂 Projets principaux

### 1. Audit et sécurisation d’une infrastructure système

**Contexte :**  
Projet d’audit et de sécurisation d’une infrastructure (Windows / Linux / AD) dans un cadre pédagogique.

**Objectifs :**  
- Cartographier l’infrastructure  
- Identifier les vulnérabilités  
- Proposer des mesures de sécurisation

**Outils utilisés :**  
- Nmap, Wireshark, Suricata  
- BloodHound + Neo4j  
- HardeningKitty, Hayabusa, winPEAS  

**Méthodologie :**  
1. **Reconnaissance & inventaire** (Nmap, scans réseau)  
2. **Analyse AD** (BloodHound : relations, privilèges, chemins d’attaque)  
3. **Audit de configuration** (HardeningKitty, Hayabusa, winPEAS)  
4. **Analyse réseau** (Suricata, Wireshark)  
5. **Recommandations** (durcissement, segmentation, monitoring)

**Résultats & livrables :**  
- Rapport d’audit structuré (PDF)  
- Recommandations priorisées (court / moyen / long terme)  
- Captures d’écran des outils et graphiques d’attaque AD

> _Ce projet montre ma capacité à mener un audit de bout en bout, à utiliser des outils avancés et à produire un rapport exploitable._


## 📄 Rapport d’audit Active Directory (PDF)
👉 [Télécharger le rapport](rapport_audit_AD.pdf)

## 2 — Audit & Sécurisation d’une Infrastructure Réseau
**Contexte :**  
Vous êtes missionnés en tant que consultants en sécurité réseau pour l'entreprise fictive
NetSecure Corp. Cette PME de 200 employés dispose d'une infrastructure réseau
classique présentant plusieurs failles de sécurité. Votre mission : auditer l'infrastructure
existante, identifier les vulnérabilités, puis proposer et implémenter un plan de
sécurisation.

**Objectifs :** 
- Cartographier et auditer l'infra
- Proposer un plan de rémédiation
- implémentation technique

  **Outils utilisés :**
  - wireshark
  - Nmap
  - iptables
  - suricata
 
  **Méthodologie :**
  Phase 1 : Audit et analyse
  - Analyse du trafic (Wireshark)
  - Cartographie réseau
  - Scan de vulnérabilités (Nmap)
  - Matrice des vulnérabilités
  - Scénario d'attaque
  Phase 2 : Remédiation et sécurisation
  - Plan de remédiation
  - Plan d'adressage sécurisé
  - Firewall (iptables/nftables)
  - Règles Suricata
  - Sécurisation des accès
 
  **Résultats & livrables :**
  -  Rapport technique
  -   Archive de configurations (ZIP) contenant : script firewall (iptables ou nftables), règles
Suricata (.rules), nouveau plan d'adressage (CSV), config SSH et 802.1X.

### 📄 Rapport PDF  
👉 [Télécharger le rapport](Rapport.pdf)

### 🗂️ Fichiers de configuration  
- 🔥 [Règles Firewall (iptables)](configs/firewall_rules.txt)  
- 🛡️ [Règles IDS Suricata](configs/suricata_rules.txt)  
- 🌐 [Configuration VLAN](configs/vlan_config.txt)  


  
## 3 - Système de Messagerie Sécurisée

Infrastructure complète de messagerie chiffrée basée sur **GnuPG**, **OpenSSL** et une **PKI interne**.  
Ce projet met en œuvre :  
- génération automatisée de clés GPG  
- création d’une Autorité de Certification (CA)  
- signature et chiffrement asymétrique  
- scripts Bash pour l’envoi et la lecture de messages sécurisés  
- gestion isolée des clés via GNUPGHOME

### 📄 Rapport PDF
👉 [Télécharger le rapport](RAPPORT%20DE%20PROJET%20SYSTÈME%20DE%20MESSAGERIE%20SÉCURISÉE.pdf)

### 🧰 Scripts du projet
- [creer_utilisateur.sh](scripts/creer_utilisateur.sh)
- [ecrire_message.sh](scripts/ecrire_message.sh)
- [lire_message.sh](scripts/lire_message.sh)




