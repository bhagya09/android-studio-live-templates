#!/bin/bash
folderAndroidStudio=~/.AndroidStudio2.0/config/
folderTemplate=$folderAndroidStudio/templates
mkdir -p $folderTemplate
ln -s ${PWD}/gooooloo.xml $folderTemplate/gooooloo.xml
