#!/bin/bash

#Copies the template to correct location and creates the intermediate dirs if neccessary

TEMPLATE_PATH=~/Library/Developer/Xcode/Templates/File\ Templates/Source
# Remove the old template source folder if needed
rm -r "${TEMPLATE_PATH}"
# Create the template source folder if needed
mkdir -p "${TEMPLATE_PATH}"

for TEMPLATE in *.xctemplate; do
    # Copy the new template
    cp -r "${TEMPLATE}" "${TEMPLATE_PATH}"
done
