if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting ""

    alias btrfortune='fortune -a -s | head -n 1 | figlet | lolcat'
    alias fortunecow='fortune -a -s | head -n 1 | cowsay | lolcat'
    
    alias l='exa -lahF --color=always --icons --sort=size --group-directories-first'
    alias ls='exa -lhF --color=always --icons --sort=size --group-directories-first'
    alias lst='exa -lahFT --color=always --icons --sort=size --group-directories-first'
    
    alias matrix='unimatrix -f -l ocCgGkS -s 96'
    alias clock='tty-clock -sct -C 4'
    alias pipes='pipes -p 5 -R -t 1 -r 0'
    colorscript -r
end

source $HOME/.config/fish/dmenu-theme.fish

set -x YTFZF_EXTMENU "dmenu -l 10 -i -nb '"$bg"' -nf '"$fg"' -sb '"$altbg"' -sf '"$fg"' -fn '"$FONT"' -p \"Search music:\""
set CHROME_EXECUTABLE "brave"

alias windows-drives='sudo mount /dev/sda1 /mnt/data/ && sudo mount /dev/sda2 /mnt/programs/'

# alias dmenu='LC_CTYPE=en_GB.UTF-8 dmenu'
