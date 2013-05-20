Numbered map markers for Google Maps Visual Refresh
===================================================

Here's a set of map markers for Google Maps [Visual Refresh](https://developers.google.com/maps/documentation/javascript/basics#VisualRefresh)
numbered from 1 to 100.

These markers were created by removing the dot from the center of the [new base marker](https://mts.googleapis.com/vt/icon/name=icons/spotlight/spotlight-poi.png&scale=1)
using [Paint.NET](http://www.getpaint.net) then running the following [ImageMagick](http://www.imagemagick.org) script:

    #!/bin/bash
    function doConvert() {
      convert base.png -font Helvetica-Bold -pointsize 14 -fill \
          "rgb(72,13,14)" -gravity center -draw "text $2,-6 '$1'" $1.png
    }
    doConvert 1 0
    for i in {2..99}; do doConvert $i 1; done
    doConvert 100 0

License
-------
This README.md file, including the embedded bash script, is provided to you under the terms of the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0.html).
I assert no licensing terms on the map marker images as they are derived from Google's intellectual property.

Enjoy!