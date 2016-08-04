#!/bin/sh

# Wait for redis daemon to start accepting connections.
while ! $SNAP/bin/netcat -z localhost 6379; do sleep 0.1; done

$SNAP/bin/ntopng -d "$SNAP_COMMON" -t "$SNAP/share/ntopng" -1 "$SNAP/share/ntopng/httpdocs" -2 "$SNAP/share/ntopng/scripts" -3 "$SNAP/share/ntopng/scripts/callbacks" -s
