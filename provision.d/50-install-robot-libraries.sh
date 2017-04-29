#!/bin/bash

su -lc /bin/bash $VAGRANT_USER <<EOF
pip install --upgrade robotframework-Selenium2Library
pip install --upgrade robotframework-httplibrary
pip install --upgrade robotframework-requests
pip install --upgrade pyperclip
pip install --upgrade gtk
EOF
