#!/bin/sh

BRIGHTNESS_DEVICE=$(ls -d /sys/class/backlight/* | head -n 1 | xargs basename)

case "$1" in
    up)
        brightnessctl -d "$BRIGHTNESS_DEVICE" set +5% > /dev/null
        ;;
    down)
        brightnessctl -d "$BRIGHTNESS_DEVICE" set 5%- > /dev/null
        ;;
    *)
        CURRENT_BRIGHTNESS=$(brightnessctl -d "$BRIGHTNESS_DEVICE" get)
        MAX_BRIGHTNESS=$(brightnessctl -d "$BRIGHTNESS_DEVICE" max)
        PERCENTAGE=$((CURRENT_BRIGHTNESS * 100 / MAX_BRIGHTNESS))

        echo "Bri ${PERCENTAGE}%" # Solo texto y porcentaje
        ;;
esac
