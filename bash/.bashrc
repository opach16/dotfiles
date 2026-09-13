# Import the default bash aliases and functions
source ~/.config/bash/shell
source ~/.config/bash/aliases
source ~/.config/bash/prompt
source ~/.config/bash/init
source ~/.config/bash/envs
source ~/.config/bash/elio
[[ $- == *i* ]] && bind -f ~/.config/bash/inputrc

# Auto-start tmux only in interactive Ghostty shells
if [[ $- == *i* && -z $TMUX && $TERM == xterm-ghostty ]]; then
    exec tmux new-session -A -s main
fi

# Initialize Zoxide to allow Elio to change the current shell directory
eval "$(zoxide init bash)"
