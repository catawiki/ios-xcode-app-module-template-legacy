#!/bin/bash
#Copies the template to correct location and creates the intermediate dirs if neccessary
mkdir -p ~/Library/Developer/Xcode/Templates/File\ Templates/Source/ && cp -r *.xctemplate "$_"