#!/bin/bash
while true; do
  # Press Numpad 0
  ydotool key 82:1 82:0
  sleep 1

  # Press Numpad 0 again
  ydotool key 82:1 82:0
  sleep 1

  # Type "r"
  ydotool type "r"

  # Wait 30 seconds before repeating the cycle
  sleep 45
done
