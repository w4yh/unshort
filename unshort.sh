#!/bin/bash
# unshort: This script un-shorten the URL.
#
# usage: ./unshort https://some-url
#
# original idea from SANS ISC: https://isc.sans.edu/diary/Taking+Apart+URL+Shorteners/28980
#

printf -v args_q '%q ' "$@"

/usr/bin/curl -k -v -I $args_q 2>&1 | /usr/bin/grep -i "< location" | /usr/bin/cut -d " " -f 3

exit
