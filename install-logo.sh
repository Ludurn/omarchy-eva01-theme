
#!/usr/bin/env bash
set -e

echo "🟣 Installing logo..."

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
dir_fonts="$HOME/.local/share/fonts/"
dir_branding="$HOME/.config/omarchy/branding/"

mkdir -p $dir_fonts
cp "$script_dir/logo/"*.ttf $dir_fonts 2>/dev/null || { echo "⚠️ No .ttf files found in logo directory"; exit 1; }
fc-cache -fv $dir_fonts >/dev/null

mkdir -p $dir_branding
cd $dir_branding
for file in *; do
  if [ -f "$file" ]; then
    if [[ "$file" != default_* ]]; then
      mv "$file" "default_$file"
    fi
  fi
done
cp "$script_dir/logo/"*.txt $dir_branding 2>/dev/null || { echo "⚠️ No .txt files in logo directory"; exit 1; }

echo "✅ Logo installed successfully!"
