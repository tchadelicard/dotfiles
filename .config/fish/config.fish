### EXPORTS ###
set -U fish_user_paths $fish_user_paths ~/.local/bin/
set fish_greeting
set TERM "xterm-256color"
set EDITOR "vim"
set SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/keyring/ssh"

### ALIASES ###

# Add alias for e for emacs
alias e="emacsclient -n"
alias doom="~/.emacs.d/bin/doom"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

### STARSHIP ####
# Start the Starship prompt
starship init fish | source

### TMUX ###
if not set -q TMUX
    set -g TMUX tmux new-session -d -s main
    eval $TMUX
    tmux attach-session -d -t main
end
