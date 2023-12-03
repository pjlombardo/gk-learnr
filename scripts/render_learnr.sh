#!/bin/bash

cd /scripts

find /srv/shiny-server -name *.Rmd >> render.txt

# Add something to send files to a log file?

Rscript render.R 