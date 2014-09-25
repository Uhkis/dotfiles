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
alias ls="ls --color=auto"
alias gitlogit="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
alias logit="git log --graph --pretty=format:'%C(yellow)%h%Creset%C(blue)%d%Creset %C(white bold)%s%Creset %C(white dim)(by %an %ar)%Creset' --all"
alias lastcommit="git diff HEAD^ HEAD"
PATH=$PATH:$HOME/scripts:$HOME/.gem/ruby/2.1.0/bin
alias emerge="sudo pacman -S"
alias eix="sudo pacman -Ss"
alias hiiri="xinput --set-prop 8 'Device Accel Constant Deceleration' 4"
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
prompt_gentoo_setup () {
prompt_gentoo_prompt=${1:-'blue'}
prompt_gentoo_user=${2:-'green'}
prompt_gentoo_root=${3:-'red'}

if [ "$USER" = 'root' ]
then
base_prompt="%B%F{$prompt_gentoo_root}%m%k "
else
base_prompt="%B%F{$prompt_gentoo_user}%n@%m%k "
fi
post_prompt="%b%f%k"

#setopt noxtrace localoptions

path_prompt="%B%F{$prompt_gentoo_prompt}%1~"
PS1="$base_prompt$path_prompt %# $post_prompt"
PS2="$base_prompt$path_prompt %_> $post_prompt"
PS3="$base_prompt$path_prompt ?# $post_prompt"
}

prompt_gentoo_setup "$@"
alias -s exe=mono
