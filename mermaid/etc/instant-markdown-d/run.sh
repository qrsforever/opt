#!/bin/bash

# sudo npm -g install instant-markdown-d
# sudo npm -g install marked

DST_DIR=/usr/lib/node_modules/instant-markdown-d

# 使用marked取代原来的markdown-it
sudo cp github-markdown.css index.html instant-markdown-d $DST_DIR
