#!/usr/bin/env bash

echo "a few words for the plan summary:"
read summary

date_daily=`date +"%Y-%m-%d"`
echo "publishing plan to archive on ${date_daily}"

cp README.md archive/${date_daily}-plan.md

git add .
git commit -m "plan rotation: ${summary}"
git push

