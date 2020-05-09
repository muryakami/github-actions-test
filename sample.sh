#!/usr/bin/env bash

echo 'Submit articles to Qiita!'

ITEMS_PATH=items
for FILE in `git diff origin/master --name-only --relative=$ITEMS_PATH | grep item.md` ; do
  DIR_NAME=`dirname $FILE`
  echo $DIR_NAME
  echo $ITEMS_PATH/$DIR_NAME
done
