---
layout: default
title: "Aristide WAFO - Cybersecurity Portfolio"
---

# 👋 Aristide WAFO

**Étudiant en Master Informatique (Systèmes, Réseaux, Sécurité)**  
Passionné par l’**audit**, la **sécurisation d’infrastructures**, l’**analyse Active Directory** et les **labs pratiques** (TryHackMe, TP, CTF).

> Je conçois, audite et sécurise des infrastructures.  
> Ce portfolio présente mes projets, mes labs et mes outils.

---

## 🧑‍💻 À propos

- 🎓 Master Informatique (Systèmes, Réseaux, Sécurité) – SUPINFO  
- 🌍 Basé en Île-de-France  
- 🎯 Intérêt fort pour :  
  - Audit d’infrastructure (Windows / Linux / AD)  
  - Blue Team, SOC, détection & réponse  
  - Automatisation (scripts Bash, outils d’audit)  

---

## 🛠️ Compétences techniques

**Systèmes & Réseaux**  
- Administration Linux (Kali, Debian, Ubuntu)  
- Administration Windows (serveurs, AD de base)  
- VLAN, routage, services réseau de base

**Sécurité & Audit**  
- Nmap, Wireshark, Suricata  
- BloodHound + Neo4j  
- HardeningKitty, Hayabusa, winPEAS  
- Analyse de logs, détection d’événements suspects

**Automatisation & Scripting**  
- Bash (ex : `setup-vlans.sh`)  
- Scripts d’audit / collecte d’informations

**Plateformes & Labs**  
- TryHackMe (SOC, PreSecurity, Blue Team, etc.)  
- Labs personnels (VMware / VirtualBox)

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


---

### 2. TP – Reconnaissance & Scanning réseau (Nmap + Wireshark)

**Objectif :**  
Identifier les hôtes actifs, les ports ouverts et analyser le trafic réseau.

**Environnement :**  
- Kali Linux  
- Nmap  
- Wireshark  

**Travail réalisé :**  
- Scans SYN, scans de ports, détection de services  
- Capture de trafic réseau  
- Analyse des paquets (TCP/IP, HTTP, etc.)

**Ce que j’ai appris :**  
- Différences entre types de scans  
- Interprétation des résultats Nmap  
- Lecture et compréhension de trames réseau

---

### 3. Script Bash – Automatisation de la configuration réseau (`setup-vlans.sh`)

**Description :**  
Script Bash permettant de configurer automatiquement des VLANs et interfaces dans un lab.

**Objectifs :**  
- Gagner du temps lors de la mise en place de labs  
- Réduire les erreurs manuelles  
- Standardiser la configuration

**Fonctionnalités :**  
- Création d’interfaces VLAN  
- Attribution d’adresses IP  
- Configuration de routes de base  

**Extrait de code :**
```bash
# Exemple (à adapter)

## 🔐 Projet : Audit & Sécurisation Réseau

Projet d’audit et de durcissement d’une architecture réseau :
- segmentation en VLAN,
- mise en place d’un firewall avec politique restrictive,
- déploiement d’un IDS Suricata,
- rédaction d’un rapport d’audit et de recommandations.

👉 [Voir le projet complet](./audit-reseau/README.md)

ip link add link eth0 name eth0.10 type vlan id 10
ip addr add 192.168.10.1/24 dev eth0.10
ip link set eth0.10 up
