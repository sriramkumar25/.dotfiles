# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"


# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"


# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

. ~/shellconf/.aliases
. ~/shellconf/.pathvariables

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(zoxide init zsh)"
fastfetch
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/sriramkumar/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/sriramkumar/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/sriramkumar/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/sriramkumar/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# bun completions

[ -s "/home/sriramkumar/.bun/_bun" ] && source "/home/sriramkumar/.bun/_bun"

export PATH="/usr/bin:$PATH"
export GOOGLE_API_KEY=AIzaSyDB5PQy1mlnbyLJCMsYQ5i12vAxTJpofEk


source <(fzf --zsh)


[ -f "/home/sriramkumar/.ghcup/env" ] && . "/home/sriramkumar/.ghcup/env" # ghcup-envexport GEM_HOME="$HOME/.local/share/gem/ruby/3.4.4"
export PATH="$GEM_HOME/bin:$PATH"



export GEM_HOME="$HOME/.local/share/gem/ruby/3.4.0"
export PATH="$GEM_HOME/bin:$PATH"
