# for startup timing
# zmodload zsh/zprof

# starship prompt
eval "$(starship init zsh)"

export ZDOTDIR=$HOME/.config/zsh

# history
SAVEHIST=2000  # Save most-recent 1000 lines
HISTFILE=~/.zsh_history
setopt appendhistory

# other config files
source "$ZDOTDIR/zsh-exports"
source "$ZDOTDIR/zsh-aliases"
source "$ZDOTDIR/zsh-vim-mode"
source "$ZDOTDIR/zsh-functions"

# docs at (man zshoptions)
setopt autocd menucomplete interactive_comments

EDITOR="nvim"
unsetopt BEEP

# speedy keys
xset r rate 210 40

# completions
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)		# Include hidden files.

# Colors
autoload -Uz colors && colors

# FZF
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/doc/fzf/examples/completion.zsh ] && source /usr/share/doc/fzf/examples/completion.zsh
[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ] && source /usr/share/doc/fzf/examples/key-bindings.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f $ZDOTDIR/completion/_fnm ] && fpath+="$ZDOTDIR/completion/"
compinit

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"
zsh_add_completion "esc/conda-zsh-completion" false

# make ctrl+backspace delete a word like bash does
bindkey "^H" backward-kill-word
autoload -U select-word-style
select-word-style bash

# timing
# zprof
