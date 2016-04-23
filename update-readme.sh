#!/bin/bash

append_README() {
  echo $@ >> README.md
}

# write header
echo 'android-studio-live-templates' > README.md
append_README '===='
append_README
append_README 'live templates for android studio'
append_README

# write install info
append_README '## installa on MAC OSX'
append_README '```source install-mac.sh```'
append_README 

# write templates
append_README '## live templates list '
append_README
count=$(xmlstarlet sel -T -t -v 'count(//template)' -n ./gooooloo.xml)
for ((i=1; i<=count; i++)); do
  name=$(xmlstarlet sel -T -t -m '//template['$i']' -v '@name' ./gooooloo.xml)
  value=$(xmlstarlet sel -T -t -m '//template['$i']' -v '@value' ./gooooloo.xml)
  append_README '- '$name
  append_README '```'$value'```'
  append_README
done
