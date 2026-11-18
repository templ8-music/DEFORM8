#!/bin/bash
# Startet DEFORM8 lokal und öffnet es im Browser. Fenster offen lassen, solange du aufnimmst.
cd "$(dirname "$0")"
PORT=8796
( sleep 1; open -a "Google Chrome" "http://localhost:$PORT" 2>/dev/null || open "http://localhost:$PORT" ) &
echo "DEFORM8 läuft auf http://localhost:$PORT  (Beenden: dieses Fenster schließen)"
exec python3 -m http.server $PORT --bind 127.0.0.1
