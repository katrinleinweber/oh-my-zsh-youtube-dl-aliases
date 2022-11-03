alias ytnpl="youtube-dl --no-playlist --restrict-filenames"

# Prefer SD on YouTube
alias yt="ytnpl  --format 18"
alias yth="ytnpl --format 22"

# For presentations
alias ytp="ytnpl  --format 244+worstaudio"
alias ytpp="ytnpl --format 247+worstaudio"

# Speech
alias yts="ytnpl --format worstaudio --extract-audio"

# Music
alias ytm="ytnpl --format bestaudio --extract-audio"

ytf() { # List formats & prompt for which one(s) to download
	FORMATS=$(ytnpl --list-formats "$1")
	echo "$FORMATS" | grep --extended-regexp --invert-match " only"
	echo ""
	echo "$FORMATS" | grep --extended-regexp "video only"
	echo ""
	echo "$FORMATS" | grep --extended-regexp "audio only"
	echo "" && echo "== Preparing to save download as:"
	echo "  $(pwd)/$(youtube-dl --restrict-filenames --get-filename $1)"
	echo "== Please copy-paste 👇 a 'format code' (or vid+aud) ☝️"
	read -r FORMAT
	ytnpl --format "$FORMAT" "$1"
}
