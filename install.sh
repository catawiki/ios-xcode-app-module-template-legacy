#!/bin/bash

#Copies the template to correct location and creates the intermediate dirs if neccessary

TEMPLATE_PATH=~/Library/Developer/Xcode/Templates/File\ Templates/Source
# Create the tempalte source folder if needed
mkdir -p "${TEMPLATE_PATH}"

for TEMPLATE in *.xctemplate; do
    # Remove the old template
    rm -r "${TEMPLATE_PATH}"/"${TEMPLATE}"
    # Copy the new template
    cp -r "${TEMPLATE}" "${TEMPLATE_PATH}"
done
