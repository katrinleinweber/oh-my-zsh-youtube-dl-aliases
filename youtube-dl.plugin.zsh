alias ytnpl="youtube-dl --no-playlist"

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

# List formats & prompt for one
ytf() {
	FORMATS=$(ytnpl --list-formats "$1")
	echo "== Please copy-paste below 👇 one 'format code' listed above ☝️"
	read -r FORMAT
	ytnpl --format "$FORMAT" "$1"
}
