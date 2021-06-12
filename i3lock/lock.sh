#!/bin/sh
i3lock --nofork                 \
    --clock			\
    --time-color=eceff4ff	\
    --time-str="%H:%M:%S"	\
    --time-font="Calvin and Hobbes"	\
    --time-size=125		\
    --time-pos="500:900"		\
    --time-color=2e3440ff	\
    \
    --date-color=d8dee9ff	\
    --date-str="%A, %d %B"	\
    --date-color=2e3440ff	\
    --date-font="Calvin and Hobbes"	\
    --date-size=95		\
    --date-pos="tx:1025"	\
    \
    --image="/home/richsouth/.config/i3lock/calvin-and-hobbes.jpg"