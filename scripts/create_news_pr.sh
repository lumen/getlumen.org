#!/bin/bash

set -e

last_post_date=$(ls _posts | grep "\-weekly\-update\.md"|sort -r|head -c 10)
date=$(date "+%Y-%m-%d")
filename="_posts/$date-weekly-update.md"

echo -e "$last_post_date -> $date"

repos=( "lumen/lumen" "eirproject/eir" "lumen/lumen_elixir" "lumen/examples" "lumen/llvm-project" "lumen/otp" "lumen/interpreter" "lumen/eir" "lumen/dmalloc-rs" "lumen/dashmap" "lumen/proc-macro2" "lumen/inkwell" "lumen/llvm-sys.rs" "lumen/wasmtime" "lumen/rfcs" "lumen/db_mon_demo" "lumen/threading-benchmarks")

authors=( "Hans Elias B. Josephsen"  "Luke Imhoff" "Paul Schoenfelder" "bitwalker" )

mkdir -p .tmp
echo -e "---\nlayout: post\ntitle: Weekly update up to $date\n---\n\n" > "$filename"

echo -e "Any editor's notes goes here.\n\n" >> "$filename"

echo -e "## Heading to group changes under\n" >> "$filename"
echo -e "Short paragraph about what the change is supposed to achieve\n" >> "$filename"
echo -e "- optional bulleted list of things done in this area for this period, if needed\n\n" >> "$filename"

echo -e "## Commits \n\n" >> "$filename"
for repo in "${repos[@]}"; do
  echo "### Repo: $repo"
  path=".tmp/$repo"
  rm -fR "$path" || true
  gh_repo="https://github.com/$repo.git"
  echo "Cloning from github: $gh_repo"
  echo "git clone --shallow-since="${last_post_date}T23:59:59Z" \"$gh_repo\" \"$path\""
  git clone --shallow-since="${last_post_date}T23:59:59Z" "$gh_repo" "$path" && \
  echo "### Repo: $repo" >> "$filename" && \
  echo "" >> "$filename" && \
  for author in "${authors[@]}"; do
    logs=$(git -C "$path" log \
      --date=short \
      --pretty="format:%h;%an;%ai;%s" \
      --since=$last_post_date \
      --author="$author")
    echo "$logs" | while read log; do
      if [ ${#log} -ge 3 ]; then
        # echo "Log: $log" && \
        IFS=';' read -r -a array <<< "$log"

        hash="${array[0]}"
        person="${array[1]}"
        timestamp="${array[2]}"
        message="${array[3]}"
        echo "Hash: $hash"
        echo "" >> "$filename" && \
        echo "- [$hash](https://github.com/$repo/commit/$hash) by $person, $timestamp: $message" >> "$filename"
      fi
    done
  done && \
  echo "" >> "$filename" && \
  echo "" >> "$filename" || \
  echo "Clone failed for $gh_repo, probably no updates."

done

branch="weekly-update-$date"
git checkout -b "$branch"
git add "$filename"
git commit -m "Create template for weekly update for $last_post_date - $date"
git push origin "$branch"

gh pr create --base "gh-pages" --reviewer "KronicDeth,bitwalker,hansihe,lawik" --title "Weekly update $date" --body "-"

git checkout gh-pages
git branch -D "$branch"

