#!/bin/bash
var=$(find . -maxdepth 1 -type f -name "*.py")
var=$(basename "$var")
var_ext=$(echo "$var" | cut -f 1 -d '.')
python -m PyInstaller --icon=design/icon.ico --noconsole -F "$var"
rm -rf exe
mkdir exe
mv dist/"$var_ext" exe/"$var_ext"
rm -r build
rm -r dist
rm ./*.spec