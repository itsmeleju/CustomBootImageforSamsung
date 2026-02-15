#!/system/bin/sh

MODDIR=${0%/*}
BLOCK="/dev/block/by-name/up_param"
STATE="/data/adb/bluehole_state"

IMG1="$MODDIR/up_param1.tar"
IMG2="$MODDIR/up_param2.tar"

# Wait until block is ready
until [ -e "$BLOCK" ]; do
    sleep 1
done

# If state file missing, create with default 1
if [ ! -f "$STATE" ]; then
    echo "1" > "$STATE"
fi

CURRENT=$(cat "$STATE")

if [ "$CURRENT" = "1" ]; then
    dd if="$IMG1" of="$BLOCK" bs=4M conv=fsync
    echo "2" > "$STATE"
else
    dd if="$IMG2" of="$BLOCK" bs=4M conv=fsync
    echo "1" > "$STATE"
fi

sync
chmod 644 "$STATE"

exit 0
