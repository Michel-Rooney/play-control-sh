#!/bin/bash

# Armazena o valor do player do arquivo players.txt em uma variável
player=$(cat ~/.config/i3/play/player.txt)

# Exibe o valor do player
playerctl -p $player play-pause


