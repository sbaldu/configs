#

cap=$(cat /sys/class/power_supply/BAT0/capacity)

if [ $cap -lt 20 ]; then
    color="#ff0000"
elif [ $cap -lt 50 ]; then
    color="#ffff00"
else
    color="#00ff00"
fi

echo "Battery: ${cap}%"
echo ""
echo "$color"
