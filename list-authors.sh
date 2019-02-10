#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

if [ -z "$1" ]; then
  echo "Pass a commit hash as argument to list authors between that commit and HEAD."
  exit 1
fi

commit=$1

rm -f authors.txt langs.txt

for file in weblate/*.po; do
  authors=$(git log "$commit"..HEAD --date=format:"%Y" --format="%aN <%aE>, %ad." "$file" | grep -v 'anonymous' | sort -u)
  if [ -n "$authors" ]; then
    new_authors=""
    while read -r author; do
      found=$(grep "$author" "$file")
      if [ -z "$found" ]; then
         new_authors+=$author$'\n'
      fi
    done <<< "$authors"
    if [ -z "$new_authors" ]; then
      echo "$file" >> langs.txt
      echo -e "\n* $file:\n" >> authors.txt
      echo "$new_authors" >> authors.txt
    fi
  fi
done
