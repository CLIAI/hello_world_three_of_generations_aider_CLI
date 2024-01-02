#!/bin/bash
set -x
git checkout -b A ; bash generation.sh
git checkout -b AA ; bash generation.sh
git checkout -b AAA ; bash generation.sh
git checkout AA
git checkout -b AAB ; bash generation.sh
git checkout A
git checkout -b AB ; bash generation.sh
git checkout -b ABA ; bash generation.sh
git checkout AB
git checkout -b ABB ; bash generation.sh
git branch # or `tig`, `gitk`...
