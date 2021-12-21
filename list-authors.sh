#!/bin/bash

if [ -z $1 ]; then
  echo "Pass a commit hash as argument to list authors between that commit and HEAD."
  exit 1
fi

commit=$1

rm -f authors.txt langs.txt

for file in weblate/*.po; do
  authors=$(git log $commit..HEAD --date=format:"%Y" --format="%aN <%aE>, %ad." $file | grep -v 'anonymous' | sort -u)
  if [ ! -z "$authors" ]; then
    new_authors=""
    while read -r author; do
      author_name=$(echo "$author" | sed 's/20[0-9][0-9].//')
      author_year=$(echo "$author" | sed 's/.*\(20[0-9][0-9]\).*/\1/')
      found_name=$(grep "$author_name" $file)
      found_year=
      if [ ! -z "$found_name" ]; then
        found_year=$(grep "$author_year" <<< "$found_name")
	  fi
      if [ -z "$found_name" -o -z "$found_year" ]; then
        new_authors+="# "$author$'\n'
      fi
    done <<< "$authors"
    if [ ! -z "$new_authors" ]; then
      echo "$file" >> langs.txt
      echo -e "\n* $file:\n" >> authors.txt
      echo "$new_authors" >> authors.txt
    fi
  fi
done
