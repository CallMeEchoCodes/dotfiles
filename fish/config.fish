fish_config theme choose "Catppuccin Mocha"

if status is-interactive
    if [ "$TERM" != linux ]
        # Fetcho best fetch
        FO_NERDFONTS=true FO_MODULES="os kernel uptime shell ram de" fetcho &
    end
    starship init fish | source &
end

set -l rosewater f5e0dc
set -l flamingo f2cdcd
set -l pink f5c2e7
set -l mauve cba6f7
set -l red f38ba8
set -l maroon eba0ac
set -l peach fab387
set -l yellow f9e2af
set -l green a6e3a1
set -l teal 94e2d5
set -l sky 89dceb
set -l sapphire 74c7ec
set -l blue 89b4fa
set -l lavender b4befe
set -l text cdd6f4
set -l subtext1 bac2de
set -l subtext0 a6adc8
set -l overlay2 9399b2
set -l overlay1 7f849c
set -l overlay0 6c7086
set -l surface2 585b70
set -l surface1 45475a
set -l surface0 313244
set -l base 1e1e2e
set -l mantle 181825
set -l crust 11111b

# Remove "Welcome to fish" message
set -g fish_greeting

# Tab complete colors
set -g fish_pager_color_progress $green
set -g fish_pager_color_prefix $pink
set -g fish_pager_color_completion $pink
set -g fish_pager_color_description $green

# Manpage colors
set -g man_blink -o $green
set -g man_bold -o $pink
set -g man_standout -b $text
set -g man_underline -u $green

# LS aliases and abbreviations
if [ "$TERM" != linux ]
    alias eza='eza -hga --color=auto --icons -b'
else
    alias eza='eza -hga --color=auto -b'
end
alias ls='eza'

abbr -a -g l ls
abbr -a -g ll 'ls -l'
abbr -a -g lt 'ls --tree'

# Fix SU
function su
    command su --shell=/usr/bin/fish $argv
end

# You can create a file named ~/.config/fish/personal.fish to configure settings that are specific to your machine.
# I would have done this in the hyprland config too but hyprland doesn't have a way to test if a file exists and
# crashes if you try to source a file that doesn't exist
if test -f ~/.config/fish/personal.fish
    source ~/.config/fish/personal.fish
end
