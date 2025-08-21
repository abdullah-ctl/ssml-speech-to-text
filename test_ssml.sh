#!/bin/bash


# Create output directory
mkdir -p data/output

# Loop through all .ssml files in ssml/
for FILE in ssml/*.ssml; do
  BASENAME=$(basename "$FILE" .ssml)
  if [ ! -f "$FILE" ]; then
    echo "SSML file $FILE not found!"
    continue
  fi
  # Convert SSML to plain text (strip tags for eSpeak NG)
  TEXT=$(sed -e 's/<[^>]*>//g' "$FILE")
  echo "Processing $FILE..."
  echo "$TEXT" | espeak-ng -v en-us -s 150 -w "data/output/$BASENAME.wav"
  echo "Audio saved to data/output/$BASENAME.wav."
done

echo "Done."
