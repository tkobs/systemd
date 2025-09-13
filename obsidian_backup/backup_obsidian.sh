#!/bin/bash

# Define the remote base path
REMOTE_USER_HOST="obsidian-vault-tko@rsync.hidrive.strato.com"
REMOTE_PATH="/users/obsidian-vault-tko"

# Get the current date for the backup directory
BACKUP_DIR_NAME="obsidian-backups/$(date +%F)"

# The final destination for the current vault
CURRENT_VAULT_NAME="obsidian-current-vault/"

# Define local path
LOCAL_PATH="/home/ava/obsidian/"

# Define the SSH key path
SSH_KEY_PATH="/home/ava/.ssh/id_rsa"

# Run the rsync command with corrected paths and SSH identity file
# Es wird direkt in das Zielverzeichnis gesynct.
# Die --backup-dir Option wird so formuliert, dass sie auf dem Remote-Server interpretiert wird.
/usr/bin/rsync -av --delete-after --backup \
  --backup-dir="../${BACKUP_DIR_NAME}" \
  --rsh="ssh -i ${SSH_KEY_PATH}" \
  "${LOCAL_PATH}" \
  "${REMOTE_USER_HOST}:${REMOTE_PATH}/${CURRENT_VAULT_NAME}"
