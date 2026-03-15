#

t=$(cat /sys/class/thermal/thermal_zone0/temp)
t=$((t/1000))

if [ $t -lt 60 ]; then
    color="#00ff00"
elif [ $t -lt 75 ]; then
    color="#ffff00"
else
    color="#ff0000"
fi

echo "CPU: ${t}°C"
echo ""
echo "$color"
