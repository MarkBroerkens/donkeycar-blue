#!/bin/sh
rsync -avz --delete -e ssh donkey@donkeycar-blue.local:/home/donkey/tmp/ tmp
