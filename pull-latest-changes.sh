#!/bin/sh -e

git pull -q
curl https://raw.githubusercontent.com/mirage/mirage-www/master/TROVE -o TROVE
./gen-submodules.sh
. $HOME/.keychain/bactrian-sh
git submodule init -q
git submodule update -q
git submodule foreach git pull origin master -q
git commit -m 'sync latest upstream changes' -a -q || true
git push -q || true
