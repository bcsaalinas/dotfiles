# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc


# =====================
# PROMPT
# =====================
PS1='\[\e[38;5;211m\]chromatic\[\e[38;5;240m\] ❯ \[\e[38;5;183m\]\w\[\e[38;5;240m\] ❯\[\e[0m\] '


# =====================
# POKEMON + FETCH
# =====================
~/.config/fastfetch/launch.sh
