#

case "$BLOCK_BUTTON" in
    1) pamixer -t ;;      # left click mute toggle
    4) pamixer -i 5 ;;    # scroll up
    5) pamixer -d 5 ;;    # scroll down
esac

vol=$(pamixer --get-volume)
mute=$(pamixer --get-mute)

if [ "$mute" = "true" ]; then
    echo "🔇"
    echo ""
    echo "#888888"
    exit
fi

if [ $vol -lt 40 ]; then
    color="#00ff00"
elif [ $vol -lt 70 ]; then
    color="#ffff00"
else
    color="#ff0000"
fi

echo "🔊 ${vol}%"
echo ""
echo "$color"
