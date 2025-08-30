#!/bin/bash

# MariaDB-Client starten
mysql "$@"

# Nach Beendigung des Clients bzgl. des Backups fragen
read -p "Backup aller Datenbanken erstellen? (j/n): " answer

if [[ "$answer" == "j" || "$answer" == "J" ]]; then
    TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
    BACKUP_DIR="$HOME/mariadb_backups"
    mkdir -p "$BACKUP_DIR"
    
    FILE="$BACKUP_DIR/all_databases_$TIMESTAMP.sql"

    echo "Erstelle Backup in $FILE ..."
    mysqldump -u root -p --all-databases > "$FILE"

    if [[ $? -eq 0 ]]; then
        echo "✅ Backup erfolgreich!"
    else
        echo "❌ Backup fehlgeschlagen."
    fi
fi