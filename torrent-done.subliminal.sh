#!/bin/sh
# on torrent complete, take ownership of the folders
chown -R io:users /mnt/pools/A/A0/Torrents/Downloads/ &&
chmod -R 755 /mnt/pools/A/A0/Torrents/Downloads/ &&

# are we talkng about a file ora a folder?
#torrent_path=/mnt/pools/A/A0/Torrents/Downloads/The.Big.Bang.Theory.S08E24.HDTV.x264-LOL\[ettv\]
torrent_path="$TR_TORRENT_DIR/$TR_TORRENT_NAME"
torrent_found=''
torrent_file=''

if [[ -d $torrent_path ]]; then
    # it's a DIR ...
    echo "$torrent_path is a directory" >> /mnt/pools/A/A0/Torrents/log.txt &&
    # cd into folder: strange chars in folder name break everything!
    cd $torrent_path && 
    # find files with certain extension in folder
    find $torrent_path -type f \( -name "*.mp4" -or -name "*.mkv" -or -name "*.avi" \)  -print | while read f; do
        echo "$f found in $torrent_path!" >> /mnt/pools/A/A0/Torrents/log.txt &&
        /opt/local/bin/subliminal --addic7ed meuro trullalla download -l en $f
    done

elif [[ -f $torrent_path ]]; then
    # it's a file!
    if  file -i $torrent_path | grep -q video  ; then
        # and it's a video!
        echo "$torrent_path is a video" >> /mnt/pools/A/A0/Torrents/log.txt &&
        /opt/local/bin/subliminal --addic7ed meuro trullalla download -l en $torrent_file
    else
        echo "$torrent_path is not a video" >> /mnt/pools/A/A0/Torrents/log.txt
        exit 0
    fi
else
    echo "$torrent_path is not valid" >> /mnt/pools/A/A0/Torrents/log.txt
    exit 0
fi

exit 0
