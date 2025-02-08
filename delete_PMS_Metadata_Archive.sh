#!/bin/bash

ls -t /media/plex/Backup/BackupPlexServerContents/PlexMetadataParent/PlexMetadata/*.tar.gz | tail -n +4 | while read file; 

do
  echo "Deleting: $file"
  rm -f "$file"
done > /var/log/pms_backup/delete_metadata.txt 2>&1
