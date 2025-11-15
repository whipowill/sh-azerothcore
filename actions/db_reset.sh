BASE_DIR="$1"
mysql -uroot -proot < "$BASE_DIR/scripts/storage/initdb.sql"
