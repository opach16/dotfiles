# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.config/bash/rc

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'
#
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
