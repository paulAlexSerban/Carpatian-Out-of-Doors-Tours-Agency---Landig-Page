#!/bin/bash
# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

source ../config.env

echo "Building landing-ssg..."

npm --prefix .. run build