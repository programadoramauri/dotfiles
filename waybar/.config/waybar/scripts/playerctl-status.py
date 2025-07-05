#!/usr/bin/env python3
import json
import subprocess

def run(cmd):
    try:
        return subprocess.check_output(cmd, stderr=subprocess.DEVNULL).decode().strip()
    except subprocess.CalledProcessError:
        return ""

player = run(["playerctl", "-l"]).splitlines()
if not player:
    print(json.dumps({"text": "", "alt": "none", "tooltip": "No media"}))
    exit(0)

status = run(["playerctl", "status"])
title = run(["playerctl", "metadata", "title"])
artist = run(["playerctl", "metadata", "artist"])
player_name = run(["playerctl", "-p", "playerctl", "metadata", "xesam:url"])

text = f"{artist} - {title}" if artist else title

icon = "🎜"
if "spotify" in player_name:
    icon = ""
elif "firefox" in player_name:
    icon = ""
elif "chromium" in player_name:
    icon = ""

print(json.dumps({
    "text": text,
    "alt": status.lower(),
    "tooltip": f"{status}: {text}",
    "class": status.lower(),
    "icon": icon
}))

