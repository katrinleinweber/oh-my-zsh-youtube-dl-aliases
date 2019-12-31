# Custom [youtube-dl](https://ytdl-org.github.io/youtube-dl/)  plugin for Oh My Zsh

### Aliases: See [`youtube-dl.plugin.zsh`](youtube-dl.plugin.zsh) 

They tend to favor royalty-free file formats,
as well as faster downloads & less storage use
by foregoing higher-than-sufficient quality levels.

### Usage: `yt… https://URL.to/the/video`

### Installation

1. Read [Oh My Zsh's notes on custom plugins](https://github.com/ohmyzsh/ohmyzsh#custom-plugins-and-themes)
1. `cd $ZSH_CUSTOM`
1. `git clone https://github.com/katrinleinweber/oh-my-zsh-youtube-dl-aliases`
1. Add `youtube-dl` to your `~/.zshrc` file's `plugins=(…)` list
1. Restart your shell

### Known issues

- Collision with [`yarn test`](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/yarn#aliases)
alias
- To view format list only, use `ytf https://URL.to/the/video`,
  abort prompt with <kbd>Ctrl</kbd>+<kbd>C</kbd>
 
