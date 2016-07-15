#!/bin/bash
#file name :databases_backups.sh
#autor: http://danieldvork.in/script-for-mysql-backup-to-dropbox/
#
USER="root"
PASSWORD="@c3ss0!Now"
OUTPUT="/root/db_backup"
DUMP_OPTIONS=$(cat <<-END
--opt
--force
--add-drop-database
--add-drop-table
--routines
--events
--lock-all-tables
--flush-logs
END
)
#
#echo $DUMP_OPTIONS && exit 0
#
/bin/rm -f $OUTPUT/*.gz #> /dev/null 2>&1
/bin/rm -f $OUTPUT/*.sql #> /dev/null 2>&1

#
databases=`mysql --user=$USER --password=$PASSWORD -e "SHOW DATABASES;" | tr -d "| " | grep -v Database`
#
for db in $databases; do
    if [[ "$db" != "information_schema" ]] && [[ "$db" != _* ]] ; then
        echo "Dumping database: $db"
        mysqldump --user=$USER --password=$PASSWORD $DUMP_OPTIONS --log-error=`date +%Y%m%d`.$db.log --databases $db > $OUTPUT/`date +%Y%m%d`.$db.sql
#        gzip $OUTPUT/`date +%Y%m%d`.$db.sql
    fi
done
