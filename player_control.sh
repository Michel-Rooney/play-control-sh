#!/bin/bash


show_message() {
    hora=$(date +"%T")
    notify-send "Selecionado: $player | $hora"
}

toggle_player() {
    python3  ~/.config/i3/play/play.py
}


player=$(cat ~/.config/i3/play/player.txt)


case "$1" in
    "toggle-player")
      toggle_player
      show_message
      ;;
    "play-pause")
      playerctl -p $player play-pause
      ;;
    "next")
      playerctl -p $player next
      ;;
    "previous")
      playerctl -p $player previous
      ;;
    *)
        echo "Usage: $0 {toggle-player|play-pause|next|previous}"
        exit 1
        ;;
esac

exit 0
