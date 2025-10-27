## About This Repository

This repository contains my configuration files for my i3wm setup and for all the programs I use on a daily basis. They are stored here for easy access should I encounter any system failures or be doing a fresh installation.

## Configuration Details
This repository includes configuration files for the following programs:
1. [x] i3wm
2. [x] i3status

## Install.sh
Script to install all the necessary application I use frequently.

### How to use Script

**Step 1. Make it Executable**
Run:
```sh
chmod +x install.sh
```

This allows you to run it directly.

**Step 2: Run the Script**
**With Sudo**
```sh
sudo ./install.sh
```
- The script will:
  - Sync the package database (-Sy).
  - Install only needed packages (--needed skips already-installed ones).
  - Report success or errors.

## Applications to Install

1. **base-devel**: Essential tools for building software from source. **Purpose**: Enables compiling AUR packages and software development.
2. **git**: Distributed version control system. **Purpose**: Manages code changes and collaboration.
3. **unzip**: Extracts files from .zip archives. **Purpose**: Decompresses .zip files.
4. **zip**: Creates and manages .zip archives. **Purpose**: Compresses files for storage or sharing.
5. **xarchiver**: Graphical archive manager for multiple formats. **Purpose**: Simplifies archive creation and extraction via GUI.
6. **7zip**: High-compression file archiver for various formats. **Purpose**: Compresses/extracts files like .7z, .zip, .rar.
7. **gvfs**: Virtual filesystem for GNOME applications. **Purpose**: Enables access to remote and local filesystems.
8. **gvfs-mtp**: GVFS backend for MTP devices. **Purpose**: Supports file access on Android and MTP devices.
9. **pcmanfm**: Lightweight file manager from LXDE. **Purpose**: Provides fast GUI for file management.
10. **feh**: Lightweight image viewer and wallpaper setter. **Purpose**: Views images and sets desktop wallpapers.
11. **evince**: Document viewer for PDF, PostScript, and DjVu. **Purpose**: Opens and views various document formats.
12. **autotiling**: Script for automatic tiling in window managers. **Purpose**: Dynamically arranges windows in tiling layouts.
13. **kitty**: Fast, GPU-accelerated terminal emulator. **Purpose**: Provides a customizable terminal for command-line tasks.
14. **code**: Visual Studio Code, a source-code editor. **Purpose**: Supports coding with extensions and debugging tools.
15. **lxappearance**: GUI for customizing GTK themes and settings. **Purpose**: Adjusts appearance of GTK-based applications.
16. **qt5ct**: Tool for customizing Qt5 application themes. **Purpose**: Configures appearance of Qt-based applications.
17. **materia-gtk-theme**: Modern GTK theme with Material Design. **Purpose**: Enhances desktop aesthetics for GTK applications.
18. **obsidian**: Markdown-based note-taking and knowledge management app. **Purpose**: Organizes notes with linking and plugins.
19. **flameshot**: Screenshot tool with annotation features. **Purpose**: Captures and edits screenshots with ease.
20. **polkit-gnome**: Authentication agent for PolicyKit in GNOME. **Purpose**: Handles privilege escalation for GUI applications.
21. **xdg-user-dirs**: Manages standard user directories (e.g., Desktop, Downloads). **Purpose**: Creates and maintains user directory structure.
22. **ttf-liberation**: Free fonts compatible with Arial, Times New Roman, etc. **Purpose**: Provides high-quality, open-source fonts.
23. **x265**: Library for encoding HEVC/H.265 video. **Purpose**: Enables high-efficiency video compression.
24. **x264**: Library for encoding H.264/MPEG-4 AVC video. **Purpose**: Supports widely-used video compression.
25. **lame**: MP3 audio encoder. **Purpose**: Converts audio to MP3 format.
26. **ffmpegthumbnailer**: Generates thumbnails for video files. **Purpose**: Creates video previews for file managers.
27. **mpv**: Lightweight, customizable media player. **Purpose**: Plays video and audio files with extensive format support.
28. **audacious**: Lightweight audio player with customizable interface. **Purpose**: Plays music with minimal resource usage.
29. **audacious-plugins**: Plugins for Audacious audio player. **Purpose**: Adds support for additional audio formats and features.
30. **gnome-disk-utility**:
31. **adapta-gtk-theme**:
32. **zsh**:


---
