#!/usr/bin/env bash

date_daily=`date +"%d-%m-%Y"`
echo "rotating plan to archive on ${date_daily}"
cp README.md archive/${date_daily}-plan.md

git add .
git commit -m "plan update"
git push

echo -n "# an awesome .plan" > README.md
