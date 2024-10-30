autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/Plugins/powerlevel10k/powerlevel10k.zsh-theme

eval "$(~/.local/bin/mise activate zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Aliases
alias ..="cd .."
alias ...="cd ../.."
alias vim="nvim"
alias zshconfig="vim ~/.zshrc"
alias lzd="lazydocker" 
alias lzg="lazygit"
alias ls="exa"
alias dexec="docker run --rm -itv $(pwd):/app -w /app"
