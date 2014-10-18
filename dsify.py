from PIL import Image, ImageFont, ImageDraw
import os
import sys

if len(sys.argv) == 1:
    exit()

im = Image.open(sys.argv[1])

#darken
im = im.point(lambda p: p * 0.2)

#paste text
youdied = Image.open('youdied.png').convert("RGBA")
im.paste(youdied, (0,0), youdied)

im.save(sys.argv[1])
