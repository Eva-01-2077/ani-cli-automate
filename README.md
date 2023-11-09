VERSION FRANÇAISE 

Script de Téléchargement d'Anime avec Transfert vers un NAS

Ce script Bash permet de télécharger des épisodes d'anime spécifiés par l'utilisateur, de les renommer et de les transférer vers un NAS ou de les conserver localement. Il utilise ani-cli pour le téléchargement des épisodes et sshpass pour le transfert vers un NAS.

Ce script et a effectuer et a executer en tant qu'administrateur sur la machine pour l'instalaltion des prérequis des différents paquet qui seront utile pour l'utilisation du script.sh

Prérequis

Système basé sur Debian/Ubuntu
Python 3 et pip installés
ani-cli installé (sera automatiquement installé par le script)
sshpass installé (sera automatiquement installé par le script)
Accès administrateur pour installer les dépendances système
Installation

Clonez ce dépôt ou téléchargez le fichier anime_downloader.sh.
Assurez-vous que le fichier a les permissions d'exécution : chmod +x anime_downloader.sh
Utilisation

Exécutez le script : ./script.sh
Suivez les instructions pour entrer le nom de l'anime et la plage d'épisodes que vous souhaitez télécharger.
Le script téléchargera les épisodes, les renommera et vous demandera si vous voulez les conserver localement ou les transférer vers un NAS.
Si vous choisissez le transfert vers un NAS, vous devrez également entrer l'adresse IP du NAS.
Note : Assurez-vous d'avoir les droits d'administrateur pour exécuter le script.

Avertissement de Sécurité

Ce script utilise sshpass pour automatiser l'authentification SSH. Cela peut poser des risques de sécurité, car le mot de passe est stocké en clair dans le script. Assurez-vous de prendre des précautions appropriées en matière de sécurité et de protéger votre script et vos informations sensibles.

ENGLISH VERSION 

Anime Download Script with NAS Transfer

This Bash script allows users to download specified anime episodes, rename them, and transfer them to a NAS or keep them locally. It uses ani-cli for episode downloads and sshpass for NAS transfers.

This script must be carried out and executed as an administrator on the machine for the installation of the prerequisites of the different packages which will be useful for using the script.sh

Prerequisites

Debian/Ubuntu-based system
Python 3 and pip installed
ani-cli installed (will be automatically installed by the script)
sshpass installed (will be automatically installed by the script)
Administrator access to install system dependencies
Installation

Clone this repository or download the anime_downloader.sh file.
Ensure the file has execution permissions: chmod +x anime_downloader.sh
Usage

Run the script: ./anime_downloader.sh
Follow the prompts to enter the anime name and episode range you want to download.
The script will download the episodes, rename them, and ask if you want to keep them locally or transfer them to a NAS.
If you choose to transfer to a NAS, you'll also need to enter the NAS IP address.
Note: Make sure you have administrator rights to run the script.

Security Warning

This script uses sshpass to automate SSH authentication. This can pose security risks as the password is stored in plain text in the script. Ensure you take appropriate security precautions and safeguard your script and sensitive information.
