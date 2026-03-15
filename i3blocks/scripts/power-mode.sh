#

mode=$(powerprofilesctl get)

case "$BLOCK_BUTTON" in
    1)
        if [ "$mode" = "power-saver" ]; then
            powerprofilesctl set balanced
        elif [ "$mode" = "balanced" ]; then
            powerprofilesctl set performance
        else
            powerprofilesctl set power-saver
        fi
        ;;
esac

echo "MOD: $(powerprofilesctl get)"
