#!/usr/bin/env bash

rsync -a -P your.account.name@jhpce01.jhsph.edu:/users/your_account_name/simulation/ /path/to/your/local/directory/simulation/ # Trailing slash to copy the contents, not the directory itself
