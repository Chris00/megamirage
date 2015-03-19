#!/bin/sh -e

git pull -q
git submodule init -q
git submodule update -q
git submodule foreach git pull origin master -q
git commit -m 'sync latest upstream changes' -a -q || true
. $HOME/.keychain/bactrian-sh
git push -q || true
