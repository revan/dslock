#!/bin/bash

cd "$(dirname -- "$0")"
scrot -z /tmp/dslock.png && python dsify.py /tmp/dslock.png && i3lock -i /tmp/dslock.png
