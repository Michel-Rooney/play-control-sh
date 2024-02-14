#!/bin/bash

# Executa o script Python
python3  ~/.config/i3/play/play.py

# Armazena o valor do player do arquivo players.txt em uma variável
player=$(cat ~/.config/i3/play/player.txt)

# Exibe o valor do player
hora=$(date +"%T")
notify-send "Selecionado: $player | $hora"
