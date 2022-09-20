# FYC

L'objectif est de présenter et démontrer les différents aspects de la Red Team. Ce cours démontrera quelques attaques basiques ainsi que plusieurs notion essentiels pour commencer dans le domaine. Il n’a pas vocation à être exhaustif.

## Présentation de la Red Team

### blue vs purple vs red team vs white team

Explication des différentes team, à quoi elles servent etc

### red team à l’international

### état du marché

les grosses boites qui ont ça pour l’instant : en cours de démocratisation

### la méthodologies de la red team

#### objectifs et intérêt

#### déroulement

#### trophées

## Techniques offensive de la red team

### Outillage et prérequis techniques

#### Outils

VM Kali/Parrot, serveur C2, …

#### Infrastructure

#### Prérequis techniques

Bases en réseau (architecture : VLAN, … ; Subnetting; …) ; système Linux et Windows ; Active Directory ;

### Phishing et ingénierie sociale

Phishing et ingénierie sociale

### Intrusion physique

#### Crochetage de serrure

#### RFID - Reproduction de badge

*flipper zero*

### Pentest numérique

*OSINT Framework*

*The Internet Archive*

*Google, Bing, Yandex etc*

#### Pentest externe : cartographie réseau

*nmap*

*Wifi pentesting*

*Shodan*

*sub-domains → dns recon*

#### Pentest externe : appli web

1. Serveur
   
   1. SQLI
      
      *SQLMap*
   
   2. SSRF
   
   3. JWT
   
   4. LFI / RFI
   
   5. Directory traversal
      
      *dirb, BurpSuite*

2. Client
   
   1. XSS
   
   2. CSRF

3. Élévation de privilège → ?

#### Test d’intrusion interne

1. Reconnaissance

        Bloohound et rakhound

        *nmap*

2. Déplacement latéral

        *Kerberos exploitation ; Mimikatz*

3. Elévation de privilège

        *Powershell*

#### Système de rebond (pivoting)

        SOCKS Proxies ; SSH Port forwarding

#### Post exploitation et collecte de trophées

### Nettoyage et fin de mission