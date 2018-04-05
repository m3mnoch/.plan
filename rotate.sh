#!/usr/bin/env bash

echo "a few words for the plan summary:"
read summary

date_daily=`date +"%Y-%m-%d"`
echo "rotating plan to archive on ${date_daily}"

cp README.md archive/${date_daily}-plan.md

git add archive
git commit -m "plan rotation: ${summary}"
git push

./tweet.sh post new .plan file: ${summary} -- https://github.com/m3mnoch/.plan/blob/master/archive/${date_daily}-plan.md

printf "# an awesome .plan\n\n#### if you're looking for my previous days, check the archives.\n\n---\n\n" > README.md

