#!/bin/bash

SOURCE="/home/plex/.config/appdata/plex/Library/Application Support/Plex Media Server/"
DEST="/media/plex/Backup/BackupPlexServerContents/PlexMetadataParent/PlexMetadata/"

ARCHIVE_NAME="PlexMetadata_$(date '+%Y%m%d_%H%M%S').tar.gz"
LOG_FILE="/var/log/pms_backup/pms_metadata_log_$(date '+%Y%m%d_%H%M%S').txt"

echo "Stopping Plex container first." >> "$LOG_FILE"
echo "docker stop plex: $(docker stop plex)" >> "$LOG_FILE"

echo "Starting compression of $SOURCE to $DEST$ARCHIVE_NAME" >> "$LOG_FILE"

# Create the tar.gz archive while preserving permissions/ownership
tar -czpvf "$DEST$ARCHIVE_NAME" -C "$SOURCE" . >> "$LOG_FILE" 2>&1

if [ $? -eq 0 ]; then
    echo "Compression completed successfully." >> "$LOG_FILE"
    echo "Archive created at: $DEST$ARCHIVE_NAME" # useful when script is run manually
else
    echo "Compression failed. Check the log file for details: $LOG_FILE" >> "$LOG_FILE"
    echo "Compression failed." # useful when script is run manually
fi

echo "Starting up Plex container." >> "$LOG_FILE"
echo "docker start plex: $(docker start plex)" >> "$LOG_FILE"
