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

function tree
    eza --tree --hyperlink --git-repos $argv
end

function catn
    cat $argv
end

function cat
    bat $argv
end

function compbdii
    javac --release 21 --enable-preview \
        -classpath "lib/postgresql-42.7.3.jar:bin" \
        -d bin \
        $(find . -name "*.java")
end

function ejbdii
    java --enable-preview \
        -classpath "bin:lib/postgresql-42.7.3.jar" \
        Main
end
