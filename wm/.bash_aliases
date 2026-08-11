# .bash_aliases
#
# This file includes all of the aliases the user wants to create

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	# pretty colors
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"

    # ls with colors and human readable file sizes
	alias ls='ls --color=auto -h'
	alias grep='grep --color=auto'

	# colored GCC warnings and errors
	export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
fi

# dvorak aliases
alias ,.="ls -l"
alias .,="ls -l"
alias ,,="ls"
alias ..="ls"

# Debian only
alias bat="batcat"

# better command names
alias battery='upower -i /org/freedesktop/UPower/devices/battery_BAT0| grep -E "state|to\ full|percentage"'

# connect to eduroam faster
alias eduroam='nmcli device wifi connect eduroam'
alias edu='eduroam'

# alias sway="dbus-launch --exit-with-session sway > /var/log/sway.log 2>&1"
# alias swayd="sway -d > /var/log/sway.log 2>&1"

# alias dwl="dbus-launch --exit-with-session slstatus -s | dbus-launch --exit-with-session dwl"

# saves grim screenshots to temp/screenshots and filename as 2024-10-30_10:45:16+01:00_grim.png (for exaple)
alias grim="grim temp/screenshots/$(date --rfc-3339="seconds" | sed s/\ /_/)_grim.png"

# Change the transparency of the default ptyxis user
# use: $ transparency 0.98
alias transparency="dconf write /org/gnome/Ptyxis/Profiles/fcb40ca314c8013cc64fc70068a98d84/opacity"

alias k="kubectl"

# TOSKA oodikone hommeleita
alias rl="npm run docker:down && npm run both:real"
