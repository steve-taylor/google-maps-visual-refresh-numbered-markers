#!/bin/bash
function doConvert() {
  convert base.png -font Helvetica-Bold -pointsize 14 -fill \
      "rgb(72,13,14)" -gravity center -draw "text $2,-6 '$1'" $1.png
}
doConvert 1 0
for i in {2..99}; do doConvert $i 1; done
doConvert 100 0
