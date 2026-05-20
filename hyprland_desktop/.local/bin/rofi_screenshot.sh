#!/bin/bash

# Generate the list of options
options="Screen snip to clipboard|Screen snip to editor|Screen snip save|Screen snip /w OCR to clipboard|Fullscreen to clipboard|Fullscreen to clipboard and save|Record screen region|Record entire screen|Record entire screen /w sound|Cancel"

# Display Rofi menu and capture selection
# -sep '|' tells rofi to split input by pipes
# -dmenu enables dmenu mode
selected=$(echo -e "$options" | rofi -dmenu -sep '|' -p "Select action:")

# Perform action based on selection
case "$selected" in
    "Screen snip to clipboard")
	grim -g "$(slurp)" - |wl-copy
        ;;
    "Screen snip to editor")
	grim -g "$(slurp)" - | swappy -f -
        ;;
    "Screen snip save")
	grim -g "$(slurp)" ~/Pictures/Screenshots/Screensnip_"$(date '+%Y-%m-%d_%H.%M.%S')".png
	;;
    "Screen snip /w OCR to clipboard")
	grim -g "$(slurp $SLURP_ARGS)" "tmp.png" && tesseract -l eng "tmp.png" - | wl-copy && rm "tmp.png"
        ;;
    "Fullscreen to clipboard")
	grim - | wl-copy
	;;
    "Fullscreen to clipboard and save")
	mkdir -p ~/Pictures/Screenshots && ~/.local/bin/grimblast.sh copysave screen ~/Pictures/Screenshots/Screenshot_"$(date '+%Y-%m-%d_%H.%M.%S')".png
	;;
    "Record screen region")
        ~/.local/bin/record-script.sh
	;;
    "Record entire screen")
        ~/.local/bin/record-script.sh --fullscreen	
	;;
    "Record entire screen /w sound")
	~/.local/bin/record-script.sh --fullscreen-sound
	;;
    "Canel")
        echo "Exiting..."
        exit 0
        ;;
    "")
        echo "No selection made."
        ;;
    *)
        echo "Unknown selection: $selected"
        ;;
esac
