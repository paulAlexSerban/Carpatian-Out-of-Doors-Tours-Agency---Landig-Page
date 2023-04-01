#!/bin/bash
# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

source ../config.env

echo -e "📦  Package Landing SSG Website"
mkdir -p ../../../package/landing-ssg
cp -rfv ../dist/* ../../../package/landing-ssg
touch ../../../package/landing-ssg/.nojekyll
echo -e "$GREEN [ info ] $NC .nojekyll created and added. $NC"
echo "Create a CNAME file"
echo 'https://paulalexserban.github.io/' > ../../../package/landing-ssg/CNAME
