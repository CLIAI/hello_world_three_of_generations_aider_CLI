We aretesting here using `aider` in programmatic way and how it affects history.

We track: `.aider.chat.history` and create and switch branches to see how it will behave.

We use following to generate commits:

```
MODEL=gpt-3.5-turbo
for x in `seq 1 4`; do
aider --model $MODEL -f MESSAGE.prompt GENERATED.md
git add .aider.chat.history.md .
git commit --amend --no-edit
done
```

OR

```
bash generation.sh
```

OR to make three (using git branches) of different "generation threads":

```
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
git branch # or `tig --all`, `gitk --all`...
```

```
# to cleanup after your experiment:
git checkout master; for b in A{,A,B}{,A,B}; do git branch -D "$b"; done
```

OR

```
bash tree_of_generations.sh
```

## Mock aider generations...

Use `generation.sh` from branch `FAST` to run it fast with mocked output:

```
git checkout FAST; bash tree_of_generations.sh
```
