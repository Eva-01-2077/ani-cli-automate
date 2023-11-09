#!/bin/bash

# Installer les dépendances pour ani-cli (pour les systèmes basés sur Debian/Ubuntu)
sudo apt-get update
sudo apt-get install pip3
sudo apt-get install -y python3 python3-pip ffmpeg sshpass

# Installer ani-cli via pip
pip3 install ani-cli

# Demander à l'utilisateur le nom de l'anime
read -p "Entrez le nom de l'anime que vous souhaitez télécharger : " anime_name

# Demander à l'utilisateur la plage d'épisodes
read -p "Entrez la plage d'épisodes que vous souhaitez télécharger (ex. 1-10) : " episode_range

# Extraire le début et la fin de la plage d'épisodes
start_episode=$(echo "$episode_range" | cut -d'-' -f1)
end_episode=$(echo "$episode_range" | cut -d'-' -f2)

# Utiliser ani-cli pour télécharger les épisodes dans la plage spécifiée
ani-cli -d "$anime_name" -r "$start_episode-$end_episode"

# Créer un répertoire pour l'anime s'il n'existe pas déjà
mkdir -p "$anime_name"

# Déplacer et renommer les fichiers .mp4 dans le répertoire de l'anime
episode_num=$start_episode
for file in *.mp4; do
  new_filename="episode_$episode_num.mp4"
  mv "$file" "$anime_name/$new_filename"
  ((episode_num++))
done

# Demander à l'utilisateur s'il veut garder les fichiers localement ou les envoyer vers un NAS
read -p "Voulez-vous garder les fichiers localement (L) ou les envoyer vers un NAS (N) ? " choice

if [[ "$choice" == "N" || "$choice" == "n" ]]; then
    # Demander à l'utilisateur l'adresse IP du NAS
    read -p "Entrez l'adresse IP du NAS : " nas_ip

    # Demander à l'utilisateur son nom d'utilisateur et son mot de passe pour le NAS
    read -p "Entrez votre nom d'utilisateur pour le NAS : " nas_user
    read -s -p "Entrez votre mot de passe pour le NAS : " nas_password

    # Utilisation de sshpass pour fournir le mot de passe en ligne de commande (attention à la sécurité)
    sshpass -p "$nas_password" scp -r "$anime_name" "$nas_user@$nas_ip:/chemin/vers/destination/sur/le/nas/"

    echo "Transfert des fichiers .mp4 vers le NAS terminé !"
else
    echo "Les fichiers .mp4 sont conservés localement."
fi

echo "Script terminé !"
