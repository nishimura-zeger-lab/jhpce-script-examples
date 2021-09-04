#!/usr/bin/env bash

qstat | grep $USER | cut -d " " -f 1 | xargs qdel
