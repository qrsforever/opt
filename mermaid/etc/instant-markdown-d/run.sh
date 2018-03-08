#!/bin/bash

DST_DIR=/usr/lib/node_modules/instant-markdown-d

# docco.css come from /usr/lib/node_modules/highlight.js/styles
sudo cp docco.css github-markdown.css index.html instant-markdown-d $DST_DIR
