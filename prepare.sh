#!/bin/bash

CURDIR=$(pwd)
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/python
if [ -d "venv" ]; then
    echo "[*] Deleting old venv..."
    rm -rf venv
fi
echo "[*] Creating new venv..."
python3 -m venv venv || (echo "[E] No python installed!" && exit 1)
cd $DIR/rust
echo "[*] Cargo check running..."
cargo c || (echo "[E] Cargo not installed!" && exit 1)
cd $CURDIR || (echo "[W] First dir not exists, going to root!" && cd $DIR)
echo "[*] All done!"