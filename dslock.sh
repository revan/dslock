#!/bin/bash
export DSLOCK="/tmp/dslock.png"

cd "$(dirname -- "$0")"
scrot -z $DSLOCK && python dsify.py $DSLOCK && i3lock -i $DSLOCK; rm -f $DSLOCK
