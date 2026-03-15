#

iface=$(ip -o link show | awk -F': ' '{print $2}' | grep -E '^wl')

if [ -z "$iface" ]; then
    echo "WiFi: no iface"
    echo ""
    echo "#888888"
    exit
fi

# pick first wireless interface
iface=$(echo "$iface" | head -n1)

state=$(cat /sys/class/net/$iface/operstate)

if [ "$state" != "up" ]; then
    echo "WiFi: down"
    echo ""
    echo "#ff0000"
    exit
fi

essid=$(iwgetid -r)

ipaddr=$(ip -4 addr show "$iface" | awk '/inet / {print $2}')

signal=$(awk -v iface="$iface" '$1 ~ iface {print int($3 * 100 / 70)}' /proc/net/wireless)

if [ -n "$ipaddr" ]; then

    if [ "$signal" -lt 40 ]; then
        color="#ff0000"
    elif [ "$signal" -lt 70 ]; then
        color="#ffff00"
    else
        color="#00ff00"
    fi

    echo "WiFi: ${essid} ${signal}%"
    echo ""
    echo "$color"
else
    echo "WiFi: no IP"
    echo ""
    echo "#ffff00"
fi
