#!/bin/sh

case "$1" in
    --toggle)
        if [ "$(pgrep -x picom)" ]; then
            pkill picom
        else
            ~/scripts/startcompton
        fi
        ;;
    *)
        if [ "$(pgrep -x picom)" ]; then
            echo "%{F#42c962}  %{F-}"

            #If Compton is running and CSGO is running kill compton
            #ps -C csgo_linux64 >/dev/null &&\
            #  pkill compton ||\
            #  echo "%{F#42c962}  %{F-}"

        else
            echo "%{F#ba2a2c}  %{F-}"
        fi
        ;;
esac
