#!/bin/bash

HEIGHT=12
WIDTH=45
CHOICE_HEIGHT=5
BACKTITLE="Visit https://PlexGuide.com - Automations Made Simple"
TITLE="Backup & Restore Menu"
MENU="Choose one of the following options:"

OPTIONS=(A "Individual: Solo App Backup"
         B "Individual: Solo App Restore"
         C "Mass (All): Backup (Takes Time)"
         D "Mass (All): Restore (Takes Time)"
         Z "Exit")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        A)
            bash /opt/plexguide/scripts/menus/backup-restore/backup/backup.sh ;;
        B)
            bash /opt/plexguide/scripts/menus/backup-restore/restore/restore.sh ;;
        C)
            bash /opt/plexguide/scripts/backup-restore/backup.sh ;;
        D)
            bash /opt/plexguide/scripts/backup-restore/restore.sh ;;
        Z)
            clear
            exit 0
            ;;
esac