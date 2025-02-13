# HomelabProject
Welcome to my homelab! I host my own internal server to host applications I use on a day-to-day basis. The main problems that my homelab solve are Media and Photo hosting solutions.<br /><br />
To do that, the main solutions I use are called Plex and Immich. They are virtualized docker containers running inside a bare metal Debian Linux server hosted on a refurbished compututer. These docker containers get deployed with my one docker compose YAML script, which makes future deployments simple and only need to be deployed with one command instead of multiple docker run commands. More information on what the scripts do down below:

docker-compose.yml - Use this one script to virtualize 5 containers of what I use on a day-to-day basis. Plex, Immich, MakeMKV, Handbrake, and Portainer to graphically manage said containers

<img width="1094" alt="Screenshot 2025-02-11 102655" src="https://github.com/user-attachments/assets/856d028a-bcd4-4a0c-8656-2d51d22ec59a" /><br /><br />


copy_PMS_Media and copy_PMS_Metadata.sh - Scripts are run automatically on a cron job every evening to make sure backups are a painless inconvenience!<br /><br />
delete_PMS_Metadata_Archive.sh - To save space on my backup storage, I run this to cleanup older backups and only keep the latest 3 copies.

![image](https://github.com/user-attachments/assets/e00463fc-ca30-4619-b6a5-85161fa1cccb)<br /><br />

restore_plex_permissions.sh - In some odd cases, I've had to manually reset permissions and ownership inside my server. This script makes it easier instead of manually running commands.

