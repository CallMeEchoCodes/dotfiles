#!/usr/bin/env bash

# Mopidy notification script for ncmpcpp

MPD_MUSIC_DIR="$HOME/Files/Music/"

SONG_TITLE=$(mpc -f %title% current | tr -d '"')
SONG_ARTIST=$(mpc -f %artist% current | tr -d '"')


if [[  -z "$SONG_TITLE" ]]; then
	SONG_TITLE=$(mpc -f %file% current | tr -d '"')
	SONG_TITLE=${SONG_TITLE::-4}
fi

if [[  -z "$SONG_ARTIST" ]]; then
	SONG_ARTIST="Unknown Artist"
fi

rm /tmp/cover-art.png &>/dev/null
if [ "$(mpc -f %file% current | cut -c1-7)" = "spotify" ]; then
	wget -q -O "/tmp/cover-art.png" "$(dbus-send --print-reply --dest=org.mpris.MediaPlayer2.mopidy /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata' | grep -E -A 1 "artUrl" | grep -E -v "artUrl" | sed 's/"//g;s/ //g;s/variantstring//g')"
elif [ "$(mpc -f %file% current | sed 's/^.*\.//')" = "mp3" ]; then
	TRACK_LOCATION=$MPD_MUSIC_DIR$(mpc -f %file% current | cut -c13- | sed 's/%20/ /g')
	ffmpeg -i "$TRACK_LOCATION" -an -c:v copy /tmp/cover-art.png
fi

notify-send -u "low" -a "ncmpcpp" "$SONG_TITLE" "$SONG_ARTIST" -i "/tmp/cover-art.png"
rm /tmp/cover-art.png &>/dev/null
