switch (uname)
    case Linux
        eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
        set -gx GOROOT /home/linuxbrew/.linuxbrew/opt/go/libexec
        fish_add_path ~/.local/kitty.app/bin
        fish_add_path ~/.local/bin
    case Darwin
        eval "$(/opt/homebrew/bin/brew shellenv)"
        set -gx GOROOT /opt/homebrew/opt/go/libexec
end

bind "[101;9u" edit_command_buffer

op completion fish | source

set -gx GOPATH $HOME/go
set -gx EDITOR nvim
set -gx GIT_EDITOR nvim
set -gx DOTFILES $HOME/.dotfiles
set -gx KO_DOCKER_REPO ghcr.io/codegangsta

fish_add_path $HOME/.dotfiles/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $GOPATH/bin
fish_add_path $GOROOT/bin
fish_add_path /usr/local/bin


if status is-interactive
    starship init fish | source
end

function fish_greeting
    # Do nothing
end
