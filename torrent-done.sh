#!/bin/sh

# find new torrent and look for avail subtitles
torrent_path="${TR_TORRENT_DIR}/${TR_TORRENT_NAME}"
NOW=$(date +%Y-%m-%d\ %H:%M:%S)

if [[ ! -z $torrent_path ]]
then
  echo "$NOW : cerco sottotitoli per $TR_TORRENT_NAME ( $torrent_path )" >> /torrents/log.txt
  python3 /torrents/opensubtitles.py $TR_TORRENT_DIR/$TR_TORRENT_NAME;
else
  echo "$NOW : torrent_path vuoto!" >> /torrents/log.txt
fi

# on torrent complete, take ownership of the folders
chown -R io:users /torrents/Downloads/ &&
chmod -R 755 /torrents/Downloads/ &&

exit 0
