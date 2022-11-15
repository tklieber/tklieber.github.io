# Escalade de privilèges

> Une élévation des privilèges est, en informatique, un mécanisme permettant à un utilisateur d'obtenir des privilèges supérieurs à ceux qu'il a normalement.
> 
> Généralement, un utilisateur va vouloir élever ses privilèges pour devenir administrateur du système, afin d'effectuer des tâches qu'il n'a pas le droit de faire en temps normal. Ce mécanisme est utile pour lancer des processus sensibles, pouvant nécessiter des compétences particulières en administration système : par exemple lors d'une manipulation des partitions d'un disque dur, ou lors du lancement d'un nouveau service.
> 
> Cette technique peut être utilisée de manière frauduleuse par un attaquant pour prendre le contrôle total d'un système. Il peut pour cela exploiter une faille de sécurité, en local sur le système (s'il est déjà connecté dessus), ou à distance (si le système est connecté à un réseau).

## Sur Linux:

### GTFO Bins

Un compte utilisateur avec des accès restreints pourrait tous de même utiliser le compte en abusant les permissions sur les binaires auxquels il a accès:
https://gtfobins.github.io/

Commande pour trouver la version du Kernel
(cat /proc/version || uname -a ) 2>/dev/null

DirtyCow avec la race condition
DirtyCow est une vulnérabilité sur les noyaux Linux présente également sur Android. Cette vulnérabilité se base sur une condition de concurence afin d'obtenir les droits d'écritures sur un fichier à la base uniquement accessible par l'utilisateur concerné en droit de lecture.
Cette vulnérabilité est présente sur les noyaux Linux depuis 2007 et exploitée depuis 2016 mais patché de manière rétro active depuis.
A cause d'une écriture en 2 temps (trouver l'adresse physique / écrire sur l'adresse physique), il est possible d'intervenir entre ces 2 étapes et de changer l'adresse physique pour y renseigner à la place l'adresse physique d'un fichier nous permettant d'avoir les droits root (exemple: /etc/passwd)
https://www.cs.toronto.edu/~arnold/427/18s/427_18S/indepth/dirty-cow/index.html

Liste d'exploits déjà compilé en fonction de la version
https://github.com/lucyoa/kernel-exploits

## Privilege escalation (Windows)

Dans le cas d'un ordinateur volé, un attaquant ayant donc la main sur la partie hardware du poste, pourrait utiliser différentes techiques afin de faire une escalade privilège et récupérer les mots de passe utilisés sur le poste, y compris les mots de passes administrateur local et administrateur du domaine si ce derniers s'est connecté sur le poste.

### LOLBAS (GTFOBins pour Windows)

https://lolbas-project.github.io/#

# Reconnaissance: Cartographie du réseau et des services

La reconaissance est la première étape dans une attaque informatique. Elle se fait d'abord au niveau de réseau puis sur les interfaces des machines détectées.
L'attaquant va chercher à savoir si il a affaire à un environnement Windows ou Linux, si un AD est présent...
Il est possible d'effectuer un plan d'adressage avec des utilitaires ou des commandes élaborées afin de se faire une idée des ports ouvert, quel type de service est présent, etc.
L'outil le plus populaire pour scanner un réseau et des interfaces est NMAP. 
NMAP est un scanner de ports open source permettant la découverte d'objets réseau, de ports ouverts, de services hebergés, ou encore d'informations sur le système d'exploitation afin de l'identifier.
Cette reconaissance a pour but de détecter des entitées vulnérable ou critique afin de passer aux phases suivante d'une attaque informatique (entre autre la persistance). Les serveurs critiques par exemple peuvent être ciblés et pris en hotage par un attaquant, généralement un ransomware, afin d'influencer une entitée victime pour qu'elle paie une rançon.
Les serveurs de sauvegardes sont aussi une cible prisée par les attaquants afin de s'assurer de se présenter comme la seule possibilité pour l'entitée victime de récuperer les données.

Exemple commande NMAP:
Lister les ports ouverts sur l'IP 10.1.1.1 et les services présents sur les ports ouvert
`nmap 10.1.1.1 --open -oG scan-results; cat scan-results | grep "/open" | cut -d " " -f 2 > exposed-services-ips`

## DHCP Snooping

## DNS Poisoning

> L'empoisonnement du cache DNS, l’usurpation de DNS, la ou pollution de cache DNS (DNS cache poisoning, DNS spoofing, ou DNS cache pollution en anglais) est une technique permettant de leurrer les serveurs DNS afin de leur faire croire qu'ils reçoivent une réponse valide à une requête qu'ils effectuent, alors qu'elle est frauduleuse. Une fois que le serveur DNS a été empoisonné, l'information est mise dans un cache, rendant ainsi vulnérables tous les utilisateurs de ce serveur. Ce type d'attaque permet, par exemple, d'envoyer un utilisateur vers un faux site dont le contenu peut servir à de l'hameçonnage (dans le cas du DNS, on parle de pharming) ou comme vecteur de virus et autres applications malveillantes.

Ce type d'attaque peut permettre par exemple de récupérer des mots de passes et autres identifiants important pour l'utilisateur.

## WIRESHARK/SNIFFING RESEAU

Le packet sniffing permet d'apprendre beaucoup sur les ranges d'IP, la taille des sous réseaux, les adresses MAC, ou encore les hostnames, simplement en consultant des paquets récupérés sur le réseau.
Il est aussi possible de trouver des mots de passe en clair dans des paquets capturés, si le réseau est mal configuré/traffic en clair.

Capturer des identifiants dans des PCAP:
https://github.com/lgandx/PCredz

L'outil PCdrez permet de retrouver les informations suivantes de manière automatisée à partir d'un fichier .pcap (capture de paquet):
 Credit card numbers
 POP
 SMTP
 IMAP
 SNMP community string
 FTP
 HTTP (NTLM/Basic/HTTP Forms)
 NTLMv1/v2 (DCE-RPC,SMBv1/2,LDAP, MSSQL, HTTP, etc)
 Kerberos (AS-REQ Pre-Auth etype 23) hashes.

Le DNS Spoofing pourrait permettre à un attaquant de rediriger ses victimes vers des sites web piratés et ce même si une URL normalement correcte était contactée.
https://www.securiteinfo.com/attaques/hacking/dnsspoofing.shtml

## ACTIVE DIRECTORY

### AD

L'Active Directory de Microsoft est la solution la plus populaire de gestion de parc d'entreprise. Cet annuaire est une cible de premier choix pour un attaquant qui aurait dès lors accès, dans la majorité des cas, l'ensemble du Système d'Information d'une entreprise.

### Bloodhound AD

L'AD est un élément clé pour effectuer des manipulations de déplacement latéral. Ces éléments peuvent être mis en valeur avec l'outil Bloodhound AD qui va cartographier les relations de droits dans l'annuaire et présenter le chemin le plus cour pour accèder à des comptes administrateurs du domaine.

--Placeholder

![](file://C:\Users\flori\AppData\Roaming\marktext\images\2022-11-15-10-15-37-1113mcp_bloodhound1b.jpg?msec=1668503737272)

#######################################################

Un attaquant voudra chiffrer un élément important de l'entreprise afin d'avoir plus de chance de forcer la main à la cible pour qu'elle paie
Trouver les serveurs de backup ou le NAS qui stock les données utilisées au quotidien par les employés de l'entreprise.
NMAP
WIRESHARK

Et plus selon:
https://book.hacktricks.xyz/generic-methodologies-and-resources/external-recon-methodology
ET
https://book.hacktricks.xyz/generic-methodologies-and-resources/pentesting-network

##################################################################################DEPLACEMENT LATERAL

### SSH/Telnet

https://www.baeldung.com/linux/local-data-remote-ssh-session

### S/FTP
