#

read used total <<< $(free -m | awk '/Mem:/ {print $3, $2}')
percent=$((used * 100 / total))

if [ $percent -lt 50 ]; then
    color="#00ff00"
elif [ $percent -lt 75 ]; then
    color="#ffff00"
else
    color="#ff0000"
fi

echo "MEM: ${used}M / ${total}M"
echo ""
echo "$color"
