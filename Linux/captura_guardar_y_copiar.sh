#!/bin/bash

CARPETA="$HOME/Imágenes/Capturas"
ARCHIVO="$CARPETA/captura_$(date +'%Y-%m-%d_%H-%M-%S').png"

#el mkdir -p la crea si no existe, el -p sirve para que si ya existe no de erorr
mkdir -p "$CARPETA"

gnome-screenshot -f "$ARCHIVO"

xclip -selection clipboard -t image/png -i "$ARCHIVO"

notify-send "Captura guardada y copiada" "$ARCHIVO"