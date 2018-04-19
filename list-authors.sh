#!/bin/bash

if [ -z $1 ]; then
  echo "Pass a commit hash as argument to list authors between that commit and HEAD."
  exit 1
fi

commit=$1

for file in weblate/*.po; do
  echo -e "\n* $file:\n"
  git log $commit..HEAD --date=format:"%Y" --format="%aN <%aE>, %ad." $file | grep -v 'anonymous' | sort -u
done
