#!/bin/bash

# Armazena o valor do player do arquivo players.txt em uma variável
player=$(cat player.txt)

# Exibe o valor do player
playerctl -p $player previous 


