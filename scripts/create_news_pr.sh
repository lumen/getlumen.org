#!/bin/bash

set -e

week_start_date=$(date -v-20d "+%Y-%m-%d")
date=$(date "+%Y-%m-%d")
git_week_start_date=$(date -v-20d +"%m-%d-%y")
git_week_end_date=$(date +"%m-%d-%y")
filename="_posts/$date-weekly-update.md"

echo "$week_start_date -> $date"


repos=( "lumen/lumen" "eirproject/eir" "lumen/lumen_elixir" "lumen/examples" "lumen/llvm-project" "lumen/otp" "lumen/interpreter" "lumen/eir" "lumen/dmalloc-rs" "lumen/dashmap" "lumen/proc-macro2" "lumen/inkwell" "lumen/llvm-sys.rs" "lumen/wasmtime" "lumen/rfcs" "lumen/db_mon_demo" "lumen/threading-benchmarks")

authors=( "Hans Elias B. Josephsen"  "Luke Imhoff" "Paul Schoenfelder" "bitwalker" )

mkdir -p .tmp
echo "{% comment %}" > "$filename"
for repo in "${repos[@]}"; do
  echo "Repo: $repo"
  path=".tmp/$repo"
  rm -fR "$path" || true
  gh_repo="https://github.com/$repo.git"
  echo "Cloning from github: $gh_repo"
  git clone --shallow-since=$git_week_start_date "$gh_repo" "$path" && \
  echo "Repo: $repo" >> "$filename" && \
  echo "" >> "$filename" && \
  for author in "${authors[@]}"; do
    git -C "$path" log \
    --pretty="format:%h was %an, %ai, message: %s" \
    --since=$git_week_start_date \
    --until=$git_week_end_date \
    --author="$author" \
    >> "$filename"
  done && \
  echo "" >> "$filename" && \
  echo "" >> "$filename" || \
  echo "Clone failed for $gh_repo, probably no updates."

done
echo "{% endcomment %}" >> "$filename"

