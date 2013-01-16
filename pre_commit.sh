#!/bin/bash

echo "prepare local commit ..."

for add_file in `git status | grep modified | sed -e "s/\s\+/|/g" | cut -d"|" -f3`
do
	git add $add_file
done

for remove_file in `git status | grep deleted | sed -e "s/\s\+/|/g" | cut -d"|" -f3`
do
	git rm $remove_file
done
