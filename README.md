# Mint-X-Hacks

This is a copy of Mint-X, one of the built-in desktop themes for Linux Mint.
It includes some changes I've made to learn how to create themes.

The original code (among other things) is here: https://github.com/linuxmint/mint-themes

Note: I'm not affiliated with Linux Mint, I just use their software.

## Installation

You'll need the Cinnamon variant of Linux Mint. I've only tested this theme on version 20.3.

Symlink this directory into `~/.themes/`.

To reorder the window titlebar buttons to match Mac OSX, install `dconf-editor`, run it,
and edit the setting `org.cinnamon.desktop.wm.preferences.button_layout`.

## Development

You'll probably want the GTK inspector for debugging. Run:

```
apt install libgtk-3-dev
apt install dconf-editor
```

And enable the inspector by running `dconf-editor` and changing
`org.gtk.Settings.Debug.enable-inspector-keybinding` to `true`.

Then you can hit `ctrl+shift+I` in any GTK app to open the inspector.
