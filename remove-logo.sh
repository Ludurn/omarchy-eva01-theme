
#!/usr/bin/env bash
set -e

echo "🟣 Removing logo..."

dir_fonts="$HOME/.local/share/fonts/"
dir_branding="$HOME/.config/omarchy/branding/"

mkdir -p $dir_fonts
cd $dir_fonts
for file in *; do
  if [ -f "$file" ] && [ "$file" == "nerv.ttf" ]; then
    rm $file
  fi
done
fc-cache -fv $dir_fonts >/dev/null

mkdir -p $dir_branding
cd $dir_branding
for file in *; do
  if [ -f "$file" ] && [[ "$file" != default_* ]]; then
    rm "$file"
  fi
done

for file in default_*; do
  if [ -f "$file" ]; then
    new_name="${file#default_}"
    if [ ! -e "$new_name" ]; then
      mv "$file" "$new_name"
    fi
  fi
done

echo "✅ Logo removed successfully!"
