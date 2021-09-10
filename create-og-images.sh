#!/bin/sh

echo "Uses Resoc"

images="input/*.png"
watermark="resoc-template/netlify-logo.png"
outputDir="output/"
bgColor="#00dc9e"

mkdir -p $outputDir

for i in $images
do
  npx create-img resoc-template/resoc.manifest.json -o "${outputDir}${i##*/}" \
    --params mainImage="$i" logo="$watermark" backgroundColor="$bgColor" \
    -w 1200 -h 630
done
