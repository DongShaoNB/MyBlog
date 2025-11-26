#!/bin/sh

VER=$(curl -s https://api.github.com/repos/gohugoio/hugo/releases/latest | grep -o '"tag_name": *"v[^"]*"' | cut -d'"' -f4)

NUM=${VER#v}

curl -L -o hugo.tar.gz https://github.com/gohugoio/hugo/releases/download/${VER}/hugo_extended_${NUM}_Linux-64bit.tar.gz

tar -xzf hugo.tar.gz

chmod +x hugo