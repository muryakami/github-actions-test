#!/usr/bin/env bash

echo 'Run Sample script'

# コミットされるファイルのうち、.phpで終わるもの
for FILE in `git diff --name-only 52a3d603e6df49996ece5fe305e48c025c334570`; do
  echo 'hoge'
  echo $FILE
  # git add $FILE
done
