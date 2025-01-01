#!/bin/sh

OUTPUT_DEVICE=$(SwitchAudioSource -c)

if [ "$OUTPUT_DEVICE" = "Jeremy’s AirPods Pro #2" ]; then
    sketchybar --set $NAME drawing=on icon=􀪷
elif [ "$OUTPUT_DEVICE" = "POD Go" ]; then
    sketchybar --set $NAME drawing=on icon=􀟑
elif [ "$OUTPUT_DEVICE" = "Fosi Audio" ]; then
    sketchybar --set $NAME drawing=on icon=􀝏
elif [ "$OUTPUT_DEVICE" = "WH-1000XM5" ]; then
    sketchybar --set $NAME drawing=on icon=􀺹
else
    sketchybar --set $NAME drawing=off
fi
