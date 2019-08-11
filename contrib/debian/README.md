
Debian
====================
This directory contains files used to package soveraind/soverain-qt
for Debian-based Linux systems. If you compile soveraind/soverain-qt yourself, there are some useful files here.

## soverain: URI support ##


soverain-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install soverain-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your soverainqt binary to `/usr/bin`
and the `../../share/pixmaps/soverain128.png` to `/usr/share/pixmaps`

soverain-qt.protocol (KDE)

