#!/bin/bash

SOURCE="/mnt/StorageDisk/Media/"
DEST="/media/plex/Backup/BackupPlexServerContents/Media/"

LOG_FILE="/var/log/pms_backup/pms_media_log_$(date '+%Y%m%d_%H%M%S').txt"

/usr/bin/rsync -av --delete --modify-window=2 --timeout=10 --partial --progress --no-links "$SOURCE" "$DEST" > "$LOG_FILE" 2>&1

echo "Rsync operation completed. Check the log file at $LOG_FILE for more details if needed."
