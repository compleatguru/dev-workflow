# massive convert from png to jpg
parallel convert '{}' '{.}.jpg' ::: *.png
