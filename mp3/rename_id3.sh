#!/bin/zsh
FOLDER_NAME=$1
ALBUM_NAME=$2
for file in ${FOLDER_NAME}/*.mp3 ; do
    id3v2 -d "${file}"
    id3v2 --album "${ALBUM_NAME}" "${file}"
done