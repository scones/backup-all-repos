#!/usr/bin/env bash

organisation="vmpublishing/"

rm -rf repo-backup/*
while IFS="" read -r repo || [ -n "$repo" ]
do
  project=${repo#"$organisation"}
  printf 'backup %s\n' "$project"
  $(cd repo-backup; git clone --quiet "git@github.com:${repo}.git" "$project" > /dev/null)
done < repos_names.txt
tar czvf repo-backup.tar.gz repo-backup

