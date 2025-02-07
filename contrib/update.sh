#!/usr/bin/env bash

set -euo pipefail


if [[ -n "$(git status -s -uall)" ]]; then
	echo "You've got uncomitted changes. Aborting!"
	exit 1;
fi

echo "Updating submodules:"

git submodule update --rebase --remote

echo "Done Updating submodules."

echo "Committing Changes"

git add site-*
git commit -m "sites: update"
