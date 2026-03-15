#

hour=$(date +%H)

if [ $hour -ge 22 ] || [ $hour -lt 6 ]; then
    color="#8888ff"
else
    color="#ffffff"
fi

echo "$(date '+%Y-%m-%d %H:%M:%S')"
echo ""
echo "$color"
