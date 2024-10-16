#!/usr/bin/env bash 

PANEL_FIFO=/tmp/panel-fifo
PANEL_HEIGHT=30
# PANEL_FONT_FAMILY="-misc-dejavu serif-bold-r-normal--11-*-*-*-p-*-adobe-standard"
PANEL_FONT_FAMILY="-gohu-gohufont-medium-r-normal--14-100-100-100-c-80-iso10646-1"
ICON_FONT2="-misc-fontawesome-medium-r-normal--14-*-*-*-p-*-iso10646-1"
ICON_FONT3="-misc-symbola-medium-r-semicondensed--14-*-*-*-p-*-iso10646-1"
ICON_FONT="-misc-icons-medium-r-normal--14-*-*-*-p-*-iso10646-1"
# export PANEL_FIFO PANEL_HEIGHT PANEL_FONT_FAMILY

# setup
if [ $(pgrep -cx panel) -gt 1 ] ; then
  printf "%s\n" "The panel is already running." >&2
  exit 1
fi

trap 'trap - TERM; kill 0' INT TERM QUIT EXIT

[ -e "$PANEL_FIFO" ] && rm "$PANEL_FIFO"
mkfifo "$PANEL_FIFO"

bspc config top_padding $PANEL_HEIGHT
bspc control --subscribe > "$PANEL_FIFO" &
# find out how to make this scroll
xtitle -sf 'T[%s]' -t 20 > "$PANEL_FIFO" &

# clock
while true;
  do
    echo 'C\uf017' $(date +"%l:%M %p");
  sleep 5;
done > "$PANEL_FIFO" &

# date
while true;
do echo 'D\uf073' $(date +'%b %d')
  sleep 5
done > $PANEL_FIFO &

# battery
while true;
do
BAT_LEVEL_0=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep "percentage" | sed 's/\s//g' | cut -d: -f2 | sed 's/%//')
BAT_LEVEL_1=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "percentage" | sed 's/\s//g' | cut -d: -f2 | sed 's/%//')

  echo 'B BAT0:'$BAT_LEVEL_0' BAT1:'$BAT_LEVEL_1

# if [ $BAT_LEVEL_0 -ge 80 ]
#   then
#     echo 'B' $BAT_LEVEL_0%
# fi
#
# if [ $BAT_LEVEL_0 -ge 30 -a $BAT_LEVEL_0 -lt 80 ]
#   then
#     echo 'B' $BAT_LEVEL_0%
# fi
#
# if [ $BAT_LEVEL_0 -lt 30 ]
#   then
#     echo 'B%{T3}%{T1}' $BAT_LEVEL_0%
# fi
#
# if [ $BAT_LEVEL_1 -ge 80 ]
#   then
#     echo 'B' $BAT_LEVEL_1%
# fi
#
# if [ $BAT_LEVEL_1 -ge 30 -a $BAT_LEVEL_1 -lt 80 ]
#   then
#     echo 'B' $BAT_LEVEL_1%
# fi
#
# if [ $BAT_LEVEL_1 -lt 30 ]
#   then
#     echo 'B%{T3}%{T1}' $BAT_LEVEL_1%
# fi

  sleep 30;
done > "$PANEL_FIFO" &

# alsa volume
while true;
do
ALSA_VOLUME=$(amixer -c 1 get Master | grep 'Mono: Playback' | grep -o '...%' | sed 's/\[//' | sed 's/%//' | sed 's/ //')
ALSA_STATE=$(amixer -c 1 get Master | grep 'Mono: Playback' | grep -o '\[on]')

if [ $ALSA_STATE ]
then
  if [ $ALSA_VOLUME -ge 70 ]
  then
    echo V'\uf028' $ALSA_VOLUME
  fi
  if [ $ALSA_VOLUME -gt 0 -a $ALSA_VOLUME -lt 70 ]
  then
    echo V'\uf027' $ALSA_VOLUME
  fi
  if [ $ALSA_VOLUME -eq 0 ]
  then
    echo V'\uf026' $ALSA_VOLUME
  fi
  else
    echo V'\uf026 mute'
  fi
  sleep 0.1
done > $PANEL_FIFO &


# wifi
while true;
do
WIFI_SSID=$(iw wlp3s0 link | grep 'SSID' | sed 's/SSID: //' | sed 's/\t//')
WIFI_SIGNAL=$(iw wlp3s0 link | grep 'signal' | sed 's/signal: //' | sed 's/ dBm//' | sed 's/\t//')
WIFI_IP=$(ifconfig wlp3s0 | grep "inet " | cut -d' ' -f10)
  echo L'' $WIFI_SSID '|' $WIFI_IP
  sleep 10
done > $PANEL_FIFO &

# disk space
while true;
do
  DIR=$(df -hlP /home | grep /home | sed 's/ \+/ /g' | cut -d' ' -f6)
  FREE_SPACE=$(df -hlP /home | grep /home | sed 's/ \+/ /g' | cut -d' ' -f4)
  echo F'' $DIR $FREE_SPACE 'free'
  sleep 10
done > $PANEL_FIFO &

# power
echo P'\uf011' > $PANEL_FIFO &

# music controls
# while true;
# do
#   SONG_NAME=$(mpc | head -n1)
#   if [[ -n $(mpc status | grep paused) ]]
#   then
#     echo "R%{T3}%{A:mpc prev:}\uf19c%{A} %{A:mpc play:}\uf198%{A}  %{A:mpc next:}\uf17c%{A}%{T1} $SONG_NAME"
#   else
#     echo "R%{T3}%{A:mpc prev:}\uf19c%{A} %{A:mpc pause:}\uf191%{A} %{A:mpc next:}\uf17c%{A}%{T1} $SONG_NAME"
#   fi
#
#   sleep 1
# done > $PANEL_FIFO &


. panel_colors

cat "$PANEL_FIFO" | panel_bar | lemonbar -g x$PANEL_HEIGHT -f "$PANEL_FONT_FAMILY" -f "$ICON_FONT" -f "$ICON_FONT2" -f "$ICON_FONT3" -F "$COLOR_FOREGROUND" -B "$COLOR_BACKGROUND" -u 2 | zsh &

wait
