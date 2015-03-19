#!/bin/sh -e

for i in `cat TROVE`; do
  user=`echo $i | awk -F'/' '{print $1}'`
  repo=`echo $i | awk -F'/' '{print $2}'`
  git submodule add https://github.com/$user/$repo || true
done
