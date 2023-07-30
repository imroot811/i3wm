#!/bin/bash

TOUCHPAD_ID=9

# Check the current state of the touchpad
TOUCHPAD_ENABLED=$(xinput list-props $TOUCHPAD_ID | grep "Device Enabled" | awk '{print $NF}')

# Toggle the touchpad state
if [ $TOUCHPAD_ENABLED -eq 1 ]; then
    xinput disable $TOUCHPAD_ID
else
    xinput enable $TOUCHPAD_ID
fi

