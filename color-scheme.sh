#!/bin/bash
#
# Maintainer:   jeffskinnerbox@yahoo.com / www.jeffskinnerbox.me
# Version:      1.0.3
#
# DESCRIPTION:
#   This file echoes a bunch of color codes to the terminal to demonstrate
#   what's available.  Each line is the color code of one foreground color,
#   out of 17 (default + 16 escapes), followed by a test use of that color
#   on all nine background colors (default + 8 escapes).
#
# bash command to disaplay all 256 colors across the screen
# (x=`tput op` y=`printf %76s`;for i in {0..256};do o=00$i;echo -e ${o:${#o}-3:3} `tput setaf $i;tput setab $i`${y// /=}$x;done)
#
# Source: https://wiki.archlinux.org/index.php/x_resources

T='gYw'   # The test text

echo -e "\n                 40m     41m     42m     43m\
     44m     45m     46m     47m";

for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' \
           '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' \
           '  36m' '1;36m' '  37m' '1;37m';
  do FG=${FGs// /}
  echo -en " $FGs \033[$FG  $T  "
  for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
    do echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m";
  done
  echo;
done
echo
