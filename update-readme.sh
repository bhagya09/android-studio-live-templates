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
append_README '## Install'
append_README '### For AndroidStudio2.0 on Mac OSX'
append_README '```source install-mac.sh```'
append_README '### In Other Cases'
append_README '```ln -s ${PWD}/gooooloo.xml [pathToYourAndroidStudioLiveTemplateFolder]/gooooloo.xml```'
append_README 
append_README 'you can check path to your Android Studio live template folder from [here](https://www.jetbrains.com/help/idea/2016.1/live-templates.html?origin=old_help).'
append_README 
append_README 'Remember to restart your Android Studio.'
append_README 

# write templates
append_README '## Live Templates List'
append_README
count=$(xmlstarlet sel -T -t -v 'count(//template)' -n ./gooooloo.xml)
for ((i=1; i<=count; i++)); do
  name=$(xmlstarlet sel -T -t -m '//template['$i']' -v '@name' ./gooooloo.xml)
  value=$(xmlstarlet sel -T -t -m '//template['$i']' -v '@value' ./gooooloo.xml)
  append_README '- '$name
  append_README ''
  append_README '```'$value'```'
  append_README
done

# write inspiration
append_README '## Inspiration'
append_README 'This project is inspired by this [post](https://lachdrache.com/2012/11/18/sharing-intellij-idea-live-templates/).'

# write license
append_README '## License'
cat LICENSE >> README.md
