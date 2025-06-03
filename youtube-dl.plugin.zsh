alias ytnpl="yt-dlp --no-playlist --restrict-filenames"

# Prefer SD on YouTube
alias yt="ytnpl  --format 18"
alias yth="ytnpl --format 22"

# Presentations
alias ytp="ytnpl --write-subs --write-auto-subs --format 244+249"

# Programming presentations
alias ytpp="ytnpl --write-subs --write-auto-subs --format 247+250"

# Speech
alias yts="ytnpl --write-subs --write-auto-subs --format worstaudio --extract-audio"

# Music
alias ytm="ytnpl --format bestaudio --extract-audio"

play_latest() {
	latest_file=$(find . -type f -ctime -1s | head -1)
	vlc --rate 1.33 "$latest_file"
}

ytf() { # List formats & prompt for which one(s) to download
	which ffmpeg

	FORMATS=$(ytnpl --list-formats "$1")

	echo "$FORMATS" | grep --invert-match "(audio|video) only"
	echo ""
	
	for type in audio video
	do
		echo "$FORMATS" | grep "$type only"
		echo ""
	done

	echo "== Please copy-paste 👇 a 'format code' (or vid+aud) ☝️ Frugal formats are: 247+250, 244+249"
	read -r FORMAT
	ytnpl --format "$FORMAT" "$1"
	
	play_latest
}

yw() {
	cd /tmp
	ytp "$1"
	play_latest
}

yww() {
	cd /tmp
	yth "$1"
	play_latest
}
