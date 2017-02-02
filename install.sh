#!/bin/sh

FILE_TEMPLATES="${HOME}/Library/Developer/Xcode/Templates"
AUTO_MATE_TEMPLATES_NAME="AutoMate UI Tests"
AUTO_MATE_TEMPLATES_SOURCE_PATH="${PWD}/`dirname \"$0\"`/${AUTO_MATE_TEMPLATES_NAME}"
AUTO_MATE_TEMPLATES_DESTINATION_PATH="${FILE_TEMPLATES}/${AUTO_MATE_TEMPLATES_NAME}"

# Checking if AutoMate template exists.
if [[ ! -d "${AUTO_MATE_TEMPLATES_SOURCE_PATH}" ]]; then
    echo "Cannot find \"${AUTO_MATE_TEMPLATES_SOURCE_PATH}\". Failing ... "
    exit 1
fi

# Check if Xcode file templates folder exists.
# If not, create it.
if [[ ! -e "${FILE_TEMPLATES}" ]]; then
    echo "\"${FILE_TEMPLATES}\" doesn't exist. Creating ..."
    mkdir -p "${FILE_TEMPLATES}"
fi

# Check if previous templates exists.
# If yes, make backup.
if [[ -e "${AUTO_MATE_TEMPLATES_DESTINATION_PATH}" ]]; then
    echo "\"${AUTO_MATE_TEMPLATES_DESTINATION_PATH}\" already exists. Backing up ..."
    BACKUP_DIR_NAME="${AUTO_MATE_TEMPLATES_NAME}.`date +%s`"
    BACKUP_DIR_NAME="`mktemp -du \"${BACKUP_DIR_NAME}.XXX\"`"
    BACKUP_PATH="${FILE_TEMPLATES}/${BACKUP_DIR_NAME}"
    mv "${AUTO_MATE_TEMPLATES_DESTINATION_PATH}" "${BACKUP_PATH}"
fi

# Create AutoMate symbolic link to Xcode templates folder.
echo "Linking \"${AUTO_MATE_TEMPLATES_NAME}\" into \"${FILE_TEMPLATES}\""
ln -s "${AUTO_MATE_TEMPLATES_SOURCE_PATH}" "${AUTO_MATE_TEMPLATES_DESTINATION_PATH}"

echo "Done."
