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