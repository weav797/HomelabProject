# HomelabProject
Hosting my docker compose script and other bash shell scripts I use on a day-to-day basis.

docker-compose.yml - Use this one script to virtualize 5 containers of what I use on a day-to-day basis. Plex, Immich, MakeMKV, Handbrake, and Portainer to graphically manage said containers

<img width="1094" alt="Screenshot 2025-02-11 102655" src="https://github.com/user-attachments/assets/856d028a-bcd4-4a0c-8656-2d51d22ec59a" /><br /><br />


copy_PMS_Media and copy_PMS_Metadata.sh - Scripts are run automatically on a cron job every evening to make sure backups are a painless inconvenience!<br /><br />
delete_PMS_Metadata_Archive.sh - To save space on my backup storage, I run this to cleanup older backups and only keep the latest 3 copies.

![image](https://github.com/user-attachments/assets/e00463fc-ca30-4619-b6a5-85161fa1cccb)

