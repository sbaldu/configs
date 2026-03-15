#

iface=$(ip route | grep default | awk '{print $5}' | head -n1)

if [[ "$iface" == wl* ]]; then
    echo "LAN: down"
    echo ""
    echo "#888888"
    exit
fi

ipaddr=$(ip -4 addr show "$iface" | awk '/inet / {print $2}')

if [ -n "$ipaddr" ]; then
    echo "LAN: ${ipaddr}"
    echo ""
    echo "#00ff00"
else
    echo "LAN: down"
    echo ""
    echo "#ff0000"
fi
