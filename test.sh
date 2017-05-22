#!/bin/zsh 

wget http://www.smhi.se/weatherCacheSMHI2/satellitbilder/msg_ovwpglobe.js

prefix=`cat msg_ovwpglobe.js| grep "URL_SATELLITBILD" | sed -e "s/.*URL_SATELLITBILD=\"\/\///" -e 's/";//' | head -1`

for x ( 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 ) {
    wget $prefix`cat msg_ovwpglobe.js| grep "brName$x" | sed -e 's/.*="//' -e 's/";//'`
}


