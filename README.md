# MegaMirage

This repository contains pointers the majority of libraries developed in the
Mirage OS project.  They are stored as `git submodule` entries, and refreshed
regularly from a cron job.

You can clone all the source code by:

    git clone git://github.com/mirage/megamirage
    git submodule init
    git submodule pull

## TODO

* Add a script to pin all the packages to their respect `opam` packages,
  so that only local source code is used in a build.
