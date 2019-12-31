# Prefer SD on YouTube
alias yt="youtube-dl --format 244 --no-playlist"
alias yth="youtube-dl --format 247 --no-playlist"

# For spoken audio
alias yta="youtube-dl --format worstaudio --extract-audio --no-playlist"

# For music
alias ytmu="youtube-dl --format bestaudio --extract-audio --no-playlist"

# List formats & prompt for one
ytf() {
	youtube-dl --list-formats "$1"
	echo "== Please copy-paste below 👇 one 'format code' listed above ☝️"
	read -r FORMAT
	youtube-dl --format "$FORMAT" "$1"
}
