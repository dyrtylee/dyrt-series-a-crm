#!/bin/bash
# Dyrt Series A CRM — local server launcher
PORT=4242
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Starting Dyrt Series A CRM on http://localhost:$PORT"
echo "Passcode: dyrt2026"
echo "Press Ctrl+C to stop."

# Open Chrome after a brief delay
sleep 0.8 && open -a "Google Chrome" "http://localhost:$PORT" &

# Start server
cd "$DIR" && python3 -m http.server $PORT --bind 127.0.0.1
