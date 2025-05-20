if status is-interactive
    # Commands to run in interactive sessions can go here
end

if test -z "$DISPLAY"; and test (tty) = "/dev/tty1"
    startx
end

set fish_greeting ""
set -x EZA_ICONS_AUTO 1

function ls
    eza --hyperlink --git-repos $argv
end

function lsn
    command ls $argv
end

function tree
    eza --tree --hyperlink --git-repos $argv
end

function treen
    command tree $argv
end

function catn
    command cat $argv
end

function cat
    bat $argv
end

