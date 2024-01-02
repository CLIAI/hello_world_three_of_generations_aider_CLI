#!/bin/bash
MODEL=gpt-3.5-turbo
for x in `seq 1 4`; do
aider --model $MODEL -f MESSAGE.prompt GENERATED.md
git add .aider.chat.history.md .
git commit --amend --no-edit
done
