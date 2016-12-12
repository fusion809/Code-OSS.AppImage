#!/bin/bash
VERSION=$(wget -q https://github.com/fusion809/Code-OSS.AppImage/releases/tag/continuous -O - | grep "x86_64.AppImage<" | cut -d '-' -f 3 | tail -n 1)
wget -c https://github.com/fusion809/Code-OSS.AppImage/releases/download/continuous/code-oss-${VERSION}-x86_64.AppImage
chmod +x code-oss-${VERSION}-x86_64.AppImage
