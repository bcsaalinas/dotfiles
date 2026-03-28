#!/bin/bash
SHINY_DIR="/usr/local/opt/pokemon-colorscripts/colorscripts/small/shiny"
RANDOM_POKEMON=$(ls "$SHINY_DIR" | shuf -n 1)
fastfetch --file-raw "$SHINY_DIR/$RANDOM_POKEMON"
