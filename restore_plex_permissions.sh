#!/bin/bash
BASE_DIR="/home/plex/.config/appdata/plex/Library/Application Support/Plex Media Server/"

sudo chown -R plex:plex "$BASE_DIR"

find "$BASE_DIR" -type d -exec chmod 755 {} \;  # Directories
find "$BASE_DIR" -type f -name "*.xml" -exec chmod 600 {} \;  # Sensitive files
find "$BASE_DIR" -type f -name ".LocalAdminToken" -exec chmod 600 {} \;  # Token file
find "$BASE_DIR" -type f ! -name "*.xml" ! -name ".LocalAdminToken" -exec chmod 644 {} \;  # Non-sensitive files

echo "Ownership and permissions reset complete!"
