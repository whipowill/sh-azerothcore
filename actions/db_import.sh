BASE_DIR="$1"
mysql --user=root --password=root acore_auth < "$BASE_DIR/backups/db/acore_accounts.sql"
mysql --user=root --password=root acore_characters < "$BASE_DIR/backups/db/acore_characters.sql"
