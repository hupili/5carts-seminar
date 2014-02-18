#!/usr/bin/env bash

#dir_input="."
dir_output="_site"

rm -rf $dir_output
jekyll build $dir_output

