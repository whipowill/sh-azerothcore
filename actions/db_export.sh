BASE_DIR="$1"
mkdir -p "$BASE_DIR/backups/db"
mysqldump --user=root --password=root acore_auth > "$BASE_DIR/backups/db/acore_accounts.sql"
mysqldump --user=root --password=root acore_characters > "$BASE_DIR/backups/db/acore_characters.sql"
