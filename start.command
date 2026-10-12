#!/bin/bash
# 더블클릭하면 발표 장표를 로컬 서버로 열어요 (유튜브 재생용).
cd "$(dirname "$0")"
PORT=8765
if ! lsof -i :$PORT >/dev/null 2>&1; then
  python3 -m http.server $PORT >/dev/null 2>&1 &
  sleep 1
fi
open -a "Google Chrome" "http://localhost:$PORT/" 2>/dev/null || open "http://localhost:$PORT/"
