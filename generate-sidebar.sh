#!/bin/bash

echo "* [Home](/)" >_sidebar.md
echo "" >>_sidebar.md

if ls *.md >/dev/null 2>&1; then
  echo "* **Notes**" >>_sidebar.md
  for file in *.md; do
    if [[ -f "$file" ]] && [[ ! "$file" =~ ^(_sidebar|README|index)\.md$ ]]; then
      filename=$(basename "$file" .md)
      urlpath=$(echo "$file" | sed 's/ /%20/g' | sed 's/,/%2C/g')
      echo "  * [$filename]($urlpath)" >>_sidebar.md
    fi
  done
  echo "" >>_sidebar.md
fi

echo "* **Folders**" >>_sidebar.md
for dir in */; do
  if [[ ! "$dir" =~ ^(\.|\.git/).*$ ]]; then
    dirname=${dir%/}
    echo "  * [$dirname](/$dirname/)" >>_sidebar.md

    echo "# $dirname" >"$dir/README.md"
    echo "" >>"$dir/README.md"
    echo "## Files in this folder:" >>"$dir/README.md"
    echo "" >>"$dir/README.md"

    has_files=false
    for file in "$dir"*.md; do
      if [[ -f "$file" ]] && [[ ! "$file" =~ (README|_sidebar)\.md$ ]]; then
        has_files=true
        filename=$(basename "$file" .md)
        urlpath=$(echo "${dirname}/$(basename "$file")" | sed 's/ /%20/g' | sed 's/,/%2C/g')
        echo "- [$filename](/$urlpath)" >>"$dir/README.md"
      fi
    done

    if [[ "$has_files" == "false" ]]; then
      echo "*No markdown files in this folder yet.*" >>"$dir/README.md"
    fi

    echo "* [← Back](../)" >"$dir/_sidebar.md"
    echo "* **$dirname**" >>"$dir/_sidebar.md"
    echo "" >>"$dir/_sidebar.md"

    if [[ "$has_files" == "true" ]]; then
      for file in "$dir"*.md; do
        if [[ -f "$file" ]] && [[ ! "$file" =~ (README|_sidebar)\.md$ ]]; then
          filename=$(basename "$file" .md)
          urlpath=$(echo "${dirname}/$(basename "$file")" | sed 's/ /%20/g' | sed 's/,/%2C/g')
          echo "  * [$filename](/$urlpath)" >>"$dir/_sidebar.md"
        fi
      done
    fi
  fi
done

echo "done"
