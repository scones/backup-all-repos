#!/usr/bin/env bash

gh api --paginate  orgs/vmpublishing/repos | jq -r '.[]."full_name"' > repos_names.txt

