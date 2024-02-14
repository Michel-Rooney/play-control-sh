#!/bin/bash

# Executa o script Python
python3 play.py

# Armazena o valor do player do arquivo players.txt em uma variável
player=$(cat player.txt)

# Exibe o valor do player
notify-send "Selecionado: $player"
