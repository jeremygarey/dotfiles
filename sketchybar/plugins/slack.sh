#!/usr/bin/env sh
STATUS_LABEL=$(lsappinfo info -only StatusLabel "Slack")
SHOW_LABEL=false
ICON_PADDING_RIGHT=12
if [[ $STATUS_LABEL =~ \"label\"=\"([^\"]*)\" ]]; then
    LABEL="${BASH_REMATCH[1]}"

    if [[ $LABEL == "" ]]; then
        ICON_COLOR="0xffa6da95"
        ICON_PADDING_RIGHT=12
        SHOW_LABEL=false
    elif [[ $LABEL == "•" ]]; then
        ICON_COLOR="0xffeed49f"
        ICON_PADDING_RIGHT=4
        SHOW_LABEL=true
    elif [[ $LABEL =~ ^[0-9]+$ ]]; then
        ICON_COLOR="0xffed8796"
        ICON_PADDING_RIGHT=4
        SHOW_LABEL=true
    else
        exit 0
    fi
else
  exit 0
fi

sketchybar --set $NAME label="${LABEL}" label.drawing=$SHOW_LABEL icon.color=${ICON_COLOR} icon.padding_right=${ICON_PADDING_RIGHT}