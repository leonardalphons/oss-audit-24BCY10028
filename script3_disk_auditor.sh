DIRS="/etc /var/log /home /usr/bin /tmp /usr/share /var/cache /opt"

echo "=================================================="
echo "    Directory Audit Report"
echo "    Generated: $(date)"
echo "=================================================="
printf "%-25s %-20s %-12s\n" "DIRECTORY" "PERMISSIONS" "SIZE"
echo "--------------------------------------------------"

for DIR in $DIRS; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1" "$3":"$4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1 || echo "N/A")
        printf "%-25s %-20s %-12s\n" "$DIR" "$PERMS" "$SIZE"
    else
        echo "$DIR : Does not exist"
    fi
done
echo "=================================================="
