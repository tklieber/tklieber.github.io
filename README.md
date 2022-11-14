# FYC

L'objectif est de présenter et démontrer les différents aspects de la Red Team. Ce cours démontrera quelques attaques basiques ainsi que plusieurs notion essentiels pour commencer dans le domaine. Il n’a pas vocation à être exhaustif.

## I. Présentation de la Red Team

### 1. blue vs purple vs red team vs white team

        Explication des différentes team, à quoi elles servent etc

### 2. red team à l’international

### 3. état du marché

        les grosses boites qui ont ça pour l’instant : en cours de démocratisation

## II. la méthodologies de la red team

### 1. objectifs et intérêt

### 2. déroulement

### 3. trophées

## III. Techniques offensive de la red team

### 1. Outillage et prérequis techniques

#### Outils

                VM Kali/Parrot, serveur C2, …

#### Infrastructure

#### Prérequis techniques

                Bases en réseau (architecture : VLAN, … ; Subnetting; …) ; système Linux et Windows ; Active Directory ;

### 2. Phishing et ingénierie sociale

                Phishing et ingénierie sociale

### 3. Intrusion physique

#### Crochetage de serrure

#### RFID - Reproduction de badge

            *flipper zero*

### 4. Pentest numérique

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
   
   2. File Upload (anciennement SSRF)
   
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

### 5. Nettoyage et fin de mission

![](/home/tristan/.config/marktext/images/2022-10-30-17-28-15-image.png)