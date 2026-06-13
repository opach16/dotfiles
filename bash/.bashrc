# Import the default bash aliases and functions
source ~/.config/bash/shell
source ~/.config/bash/aliases
source ~/.config/bash/prompt
source ~/.config/bash/init
source ~/.config/bash/envs
[[ $- == *i* ]] && bind -f ~/.config/bash/inputrc

# Make an alias for invoking commands you use constantly
alias runSnapshot='sudo sh /usr/local/bin/btrbk-snapshot.sh'
alias runBackup='sudo sh /usr/local/bin/btrbk-backup.sh'
alias mountOnedrive='rclone mount onedrive: ~/OneDrive/ --vfs-cache-mode writes&'
alias mountGdrive='rclone mount gdrive: ~/Gdrive/ --vfs-cache-mode writes&'

# Auto-start hyprland
if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec uwsm start hyprland
fi

# Auto-start tmux in Ghostty
case $- in
*i*)
  if [[ -z "$TMUX" && "$TERM" == "xterm-ghostty" ]]; then
    exec tmux new-session -A -s main
  fi
  ;;
esac
