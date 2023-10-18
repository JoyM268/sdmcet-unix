#!/bin/bash
#calendar.sh: Sample Shell Script
echo -e "Today's date: `date`\n"
echo "This month's calendar:"
cal `date "+%m 20%y"`
echo -e "My shell: $SHELL\n"