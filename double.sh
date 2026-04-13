#!/bin/bash
while true; do
  # Press Numpad 0
  ydotool key 82:1 82:0
  sleep 1

  # Press Numpad 0 again
  ydotool key 82:1 82:0
  sleep 1

  ydotool type "q"
  sleep 45

  ydotool type "e"
  sleep 20
done
