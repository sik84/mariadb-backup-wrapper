# mariadb-backup-wrapper

Dieses Projekt dient dazu, das Erstellen von Backups zu automatisieren und durch eine Abfrage zu verifizieren.

## 🚀 Features

Startet die MariaDB-Shell wie gewohnt

Fragt beim Beenden nach einem Backup

Erstellt vollständige Dumps aller Datenbanken mit Zeitstempel

Legt die Backups automatisch im Home-Verzeichnis (~/mariadb_backups/) ab

## 📦 Installation

1. Repo klonen

```bash
git clone https://github.com/sik84/mariadb-backup-wrapper.git
cd mariadb-backup-wrapper
```

2. Skript ausführbar machen

```bash
chmod +x mysql-wrapper.sh
```

## 🔧 Nutzung

Du hast zwei Möglichkeiten:

## Variante A: Direkt im Projektordner nutzen

```bash
./mysql-wrapper.sh -u root -p
```

## Variante B: Alias setzen (empfohlen)
Wenn du immer mysql statt mysql-wrapper.sh tippen willst, kannst du einen Alias in deine ~/.bashrc oder ~/.zshrc einfügen:

```bash
alias mysql="~/pfad/zu/mariadb-backup-wrapper/mysql-wrapper.sh"
```

Danach:
```bash
source ~/.bashrc    # oder source ~/.zshrc
```

Nun reicht:
```bash
mysql -u root -p
```

## 💾 Backups

Backups werden im Ordner ~/mariadb_backups/ gespeichert

Dateiname: all_databases_YYYYMMDD_HHMMSS.sql

Falls der Ordner nicht existiert, wird er automatisch angelegt

## 📸 Beispielablauf

```bash
$ ./mysql-wrapper.sh -u root -p
Welcome to the MariaDB monitor...
MariaDB [(none)]> exit
Bye
Backup aller Datenbanken erstellen? (j/n): j
Erstelle Backup in /home/user/mariadb_backups/all_databases_20250830_142500.sql ...
✅ Backup erfolgreich!
```

## 📝 Lizenz

Copyright © 2025 Stefan Sikiric

Dieses Projekt steht unter der **Apache License 2.0** – siehe [LICENSE](./LICENSE) für Details.
