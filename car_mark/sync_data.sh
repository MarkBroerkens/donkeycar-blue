#!/bin/sh
rsync -avz --delete -e ssh donkey@donkeycar-blue.local:/home/donkey/cars/donkeycar-blue/car_mark/data/ data
