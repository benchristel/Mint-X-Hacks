#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0) && pwd)

# Set button layout to match OSX
gsettings set org.cinnamon.desktop.wm.preferences button-layout close,minimize,maximize:

# Install global GTK styles. This is needed to style Nemo's desktop items,
# since Nemo has its own built-in styles that take priority over the theme.
mkdir -p ~/.config/gtk-3.0
if ! grep -qs osx-gtk-overrides ~/.config/gtk-3.0/gtk.css; then
  echo '@import url("osx-gtk-overrides.css");' >> ~/.config/gtk-3.0/gtk.css
fi
ln -sf $SCRIPT_DIR/osx-gtk-overrides.css ~/.config/gtk-3.0/osx-gtk-overrides.css

# Install fonts
tar -xzf fonts.tgz
mkdir -p ~/.local/share/fonts
mv fonts/* ~/.local/share/fonts
rm -rf fonts
