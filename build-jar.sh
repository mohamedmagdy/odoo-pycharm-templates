#!/bin/bash

# Create color folder
TEMPLATE_FOLDER=templates
mkdir ${TEMPLATE_FOLDER}

# Copy the Odoo.xml files to templates folder
cp Odoo.xml ${TEMPLATE_FOLDER}

# Create an empty "IntelliJ IDEA Global Settings" file,
# needed to be able to import the JAR using "Import Settings..."
touch "IntelliJ IDEA Global Settings"
jar cfM settings.jar "IntelliJ IDEA Global Settings" ${TEMPLATE_FOLDER}

# Remove temporary folders and files
rm -rf ${TEMPLATE_FOLDER}
rm "IntelliJ IDEA Global Settings"
