#!/bin/bash
################################################################################
# Name:        mview
# Date:        2024-02-07
# Author:      Amosnimos
# Description: This Bash script takes a Markdown file as an argument, converts it to HTML using a sed command for speed, opens the HTML file in Firefox, and waits for Firefox to close. Once Firefox is closed, the script deletes the temporary HTML file. This allows users to quickly view Markdown files in Firefox without the need for a slower conversion tool like pandoc.
################################################################################

if [ $# -ne 1 ]; then
    echo "Usage: $0 <markdown_file>"
    exit 1
fi

markdown_file="$1"
html_file="$(mktemp).html"

# Convert Markdown to HTML using sed
sed -e 's/^# \(.*\)$/\<h1\>\1\<\/h1\>/' \
    -e 's/^[0-9]\+\. \(.*\)$/\<li\>\1\<\/li\>/' \
    -e 's/^- \(.*\)$/\<ul\>\<li\>\1\<\/li\>\<\/ul\>/' \
    -e 's/^___$/\<hr\>/' "$markdown_file" > "$html_file"

# Open HTML file in Firefox
firefox "$html_file"

# Wait for Firefox to close
while pgrep -x firefox > /dev/null; do sleep 1; done

# Delete temporary HTML file
rm "$html_file"
