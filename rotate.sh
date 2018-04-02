#!/usr/bin/env bash

date_daily=`date +"%Y-%m-%d"`
echo "rotating plan to archive on ${date_daily}"
cp README.md archive/${date_daily}-plan.md

./tweet.sh post i just rotated my .plan file: https://github.com/m3mnoch/.plan/blob/master/archive/${date_daily}-plan.md

printf "# an awesome .plan\n\n" > README.md
