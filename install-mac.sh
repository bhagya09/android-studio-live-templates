#!/bin/bash
folderBase=~/Library/Preferences
folderAndroidStudio=$folderBase/AndroidStudio2.0
folderTemplate=$folderAndroidStudio/templates
mkdir -p $folderTemplate
ln -s ${PWD}/gooooloo.xml $folderTemplate/gooooloo.xml
