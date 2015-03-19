#!/bin/sh -e

./gen-submodules.sh
. $HOME/.keychain/bactrian-sh
git pull -q
git submodule init -q
git submodule update -q
git submodule foreach git pull origin master -q
git commit -m 'sync latest upstream changes' -a -q || true
git push -q || true
