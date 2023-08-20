mkdir ~/backups/db
mysqldump --user=root --password=root acore_accounts > ~/backups/db/acore_accounts.sql
mysqldump --user=root --password=root acore_characters > ~/backups/db/acore_characters.sql