#!/bin/bash
VERSION=$(wget -q https://github.com/fusion809/GVim.AppImage/releases/tag/continuous -O - | grep "x86_64.AppImage<" | cut -d '-' -f 2 | tail -n 1)
wget -c https://github.com/fusion809/GVim.AppImage/releases/download/continuous/gvim-${VERSION}-x86_64.AppImage
chmod +x gvim-${VERSION}-x86_64.AppImage
