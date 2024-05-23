#!/bin/bash

# Base directory containing the images and subfolders
base_dir="/p/work/dta1/mednerf/graf-main/data/drr/knee_xrays"

# Iterate over all image files in the base directory
for img in "$base_dir"/*.png; do
  # Extract the prefix (first two characters) of the image file name
  prefix=$(basename "$img" | cut -c1-2)
  
  # Check if the subfolder exists, if not create it
  if [ ! -d "$base_dir/$prefix" ]; then
    mkdir "$base_dir/$prefix"
    echo "Subfolder $prefix created."
  fi
  
  # Move the image file to the corresponding subfolder
  mv "$img" "$base_dir/$prefix/"
done