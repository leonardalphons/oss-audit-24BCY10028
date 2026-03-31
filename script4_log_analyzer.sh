LOGFILE=${1:-"/var/log/syslog"}
KEYWORD=${2:-"error"}
COUNT=0

echo "=================================================="
echo "    Log File Analyzer"
echo "=================================================="
echo "File: $LOGFILE"
echo "Keyword: $KEYWORD"

if [ ! -f "$LOGFILE" ]; then
    echo "Error: $LOGFILE not found"
    echo "Usage: $0 <logfile> [keyword]"
    exit 1
fi

while IFS= read -r LINE; do
    if echo "$LINE" | grep -qi "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo ""
echo "Results: '$KEYWORD' found $COUNT times"
echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
echo "=================================================="
