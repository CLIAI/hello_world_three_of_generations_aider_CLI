#!/bin/bash
MODEL=gpt-3.5-turbo
for x in `seq 1 4`; do
(echo -n 'TEST: '; wc -l GENERATED.md) >> GENERATED.md
git add .aider.chat.history.md .
git commit --no-edit -m 'TEST'
done
