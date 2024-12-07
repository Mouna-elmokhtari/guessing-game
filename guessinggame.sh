#!/bin/bash

function guess_files {
    local count=$(ls -1 | wc -l)
    while true; do
        echo "Devinez combien de fichiers se trouvent dans ce répertoire :"
        read guess
        if [[ $guess -eq $count ]]; then
            echo "Félicitations ! Vous avez deviné le bon nombre."
            break
        elif [[ $guess -lt $count ]]; then
            echo "Trop bas, essayez encore."
        else
            echo "Trop haut, essayez encore."
        fi
    done
}

guess_files
