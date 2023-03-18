#!/bin/bash

find -L . -maxdepth 2 -type f -iname '*.ini' ! -perm /u=w -exec chmod a+rw {} \;
