BACKUP_DIR=/var/backup
BACKUP_TARGETS=(
    ${HOME}
    /etc
)

# 初期バックアップの取得
sudo mkdir -p ${BACKUP_DIR} && sudo chown -R isucon:isucon ${BACKUP_DIR}
sudo tar cvzf ${BACKUP_DIR}/backup.tar.gz ${BACKUP_TARGETS[@]} && sudo chown isucon:isucon ${BACKUP_DIR}/backup.tar.gz
sudo mysqldump -x --all-databases > ${BACKUP_DIR}/backup.dump
