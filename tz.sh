#!/bin/bash

# Timezone switcher.
# 
# Valid timezones:
#  - Asia/Manila (GMT +8)
#       Philippine Standard Time (PST)
#  - Europe/London 
#       Universal Time Coordinated (UTC)
#  - America/Los_Angeles 
#       Pacific Timezone (PT) 
#       * Pacific Standard Time or PST/GMT -8
#       * Pacific Daylight Time or PDT/GMT -7
#  - America/Chicago
#       Central Time (CT)
#       * Central Standard Time or CST/GMT -6
#       * Central Daylight Time or CDT/GMT -5
#  - America/New_York
#       Eastern Time (ET)
#       * Eastern Standard Time or EST/GMT -5
#       * Eastern Daylight Time or EDT/GMT -4
#  - America/Denver
#       Mountain Time (MT)
#       * Mountain Standard Time or MST/GMT -7
#       * Mountain Daylight Time or MDT/GMT -6
###############################################

echo "Allowed timezones: PST, PT, ET, CT, MT, UTC"
echo 
echo -n "Enter the timezone: "
read TIMEZONE

case $TIMEZONE in

  PST)
    echo -n "Switching to Philippine timezone..."
    echo
    sudo systemsetup -settimezone Asia/Manila
    ;;

  PT)
    echo -n "Switching to Pacific timezone..."
    echo
    sudo systemsetup -settimezone America/Los_Angeles 
    ;;

  ET)
    echo -n "Switching to Eastern timezone..."
    echo
    sudo systemsetup -settimezone America/New_York
    ;;
  MT)
    echo -n "Switching to Mountain timezone..."
    echo
    sudo systemsetup -settimezone America/Denver
    ;;
  CT)
    echo -n "Switching to Central timezone..."
    echo
    sudo systemsetup -settimezone America/Chicago
    ;;
  UTC)
    echo -n "Switching to Universal Time Coordinated timezone..."
    echo
    sudo systemsetup -settimezone Europe/London
    ;;

  *)
    echo -n "Unknown timezone."
    ;;
esac
