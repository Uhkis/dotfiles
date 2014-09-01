# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' special-dirs true
zstyle :compinstall filename '~/.zshrc'
fpath=($fpath ~/.zsh/completion)
autoload -Uz colors && colors
export PS1="%n@%M %~ $ "
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
autoload -U compinit
compinit -i

bindkey "^R" history-incremental-search-backward
bindkey "^[[F" end-of-line
bindkey "^[[H" beginning-of-line
bindkey "^[[3~" delete-char
autoload -Uz promptinit
promptinit
prompt gentoo
alias ls="ls --color=auto"
alias gitlogit="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
alias logit="git log --graph --pretty=format:'%C(yellow)%h%Creset%C(blue)%d%Creset %C(white bold)%s%Creset %C(white dim)(by %an %ar)%Creset' --all"
alias lastcommit="git diff HEAD^ HEAD"
PATH=$PATH:$HOME/scripts
