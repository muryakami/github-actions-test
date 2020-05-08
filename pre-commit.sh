#!/usr/bin/env bash

echo 'Run Sample script'

# コミットされるファイルのうち、.mdで終わるもの
ITEMS_PATH=items
for FILE in `git diff --name-only 52a3d603e6df49996ece5fe305e48c025c334570 --relative=$ITEMS_PATH | grep item.md` ; do
  DIR_NAME=`dirname $FILE`
  echo $DIR_NAME
  echo $ITEMS_PATH/$DIR_NAME
  # git add $ITEMS_PATH/$DIR_NAME
done

# git add -A
