#!/bin/bash
for i in ~/.AndroidStudio*
do
    echo $i
    folderAndroidStudio=$i/config/
    folderTemplate=$folderAndroidStudio/templates
    mkdir -p $folderTemplate
    ln -s ${PWD}/gooooloo.xml $folderTemplate/gooooloo.xml
done
