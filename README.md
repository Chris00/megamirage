# MegaMirage

This repository contains pointers the majority of libraries developed in the
Mirage OS project.  They are stored as `git submodule` entries, and refreshed
regularly from a cron job.

This is keyed off the [TROVE file in mirage-www](https://github.com/mirage/mirage-www/blob/master/TROVE).
If you are developing a library, just send a pull request to add it to that
file and it will be mirrored in this repository. You can do this even if
your libarary is not yet released (e.g. you want to grab the name).

You can clone all the source code by:

    git clone git://github.com/mirage/megamirage
    git submodule init
    git submodule pull

## TODO

* Add a script to pin all the packages to their respect `opam` packages,
  so that only local source code is used in a build.
