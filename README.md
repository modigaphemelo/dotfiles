## About This Repository

This repository contains my configuration files for my i3wm setup and for all the programs I use on a daily basis. They are stored here for easy access should I encounter any system failures or be doing a fresh installation.

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

1. **base-devel**: Essential tools for building software from source. **Purpose**: Enables compiling AUR packages and software development, forming the foundation for installing and customizing many other applications.

2. **git**: Distributed version control system. **Purpose**: Manages code changes and collaboration, critical for version tracking in development and configuration repositories.

3. **zsh**: Z shell, an extended Bourne shell with advanced features. **Purpose**: Provides improved command-line completion, themes, and scripting capabilities, enhancing daily terminal productivity.

4. **alacritty**: Fast, cross-platform, OpenGL-based terminal emulator. **Purpose**: Delivers high-performance command-line interface operations, serving as the primary access point for system interactions.

5. **autotiling**: Script for automatic tiling in window managers. **Purpose**: Dynamically arranges windows in tiling layouts, optimizing workspace efficiency in i3wm environments.

6. **pcmanfm**: Lightweight file manager from LXDE. **Purpose**: Provides a fast graphical user interface for file management, essential for navigating and organizing files.

7. **gvfs**: Virtual filesystem for GNOME applications. **Purpose**: Enables access to remote and local filesystems, facilitating seamless integration with various storage protocols.

8. **gvfs-mtp**: GVFS backend for MTP devices. **Purpose**: Supports file access on Android and other MTP-enabled devices, ensuring compatibility with mobile hardware.

9. **xdg-user-dirs**: Manages standard user directories (e.g., Desktop, Downloads). **Purpose**: Creates and maintains a structured user directory system, promoting organized file storage.

10. **polkit-gnome**: Authentication agent for PolicyKit in GNOME. **Purpose**: Handles privilege escalation for graphical applications, ensuring secure execution of administrative tasks.

11. **code**: Visual Studio Code, a source-code editor. **Purpose**: Supports coding with extensions and debugging tools, vital for software development and scripting.

12. **obsidian**: Markdown-based note-taking and knowledge management application. **Purpose**: Organizes notes with linking and plugins, aiding in personal knowledge base maintenance.

13. **bitwarden**: Open-source password manager. **Purpose**: Securely stores and manages passwords across devices, essential for maintaining digital security.

14. **feh**: Lightweight image viewer and wallpaper setter. **Purpose**: Views images and sets desktop wallpapers, contributing to desktop customization.

15. **flameshot**: Screenshot tool with annotation features. **Purpose**: Captures and edits screenshots with ease, supporting documentation and troubleshooting.

16. **evince**: Document viewer for PDF, PostScript, and DjVu. **Purpose**: Opens and views various document formats, handling common file reading needs.

17. **mpv**: Lightweight, customizable media player. **Purpose**: Plays video and audio files with extensive format support, serving as a primary media consumption tool.

18. **lxappearance**: Graphical user interface for customizing GTK themes and settings. **Purpose**: Adjusts appearance of GTK-based applications, improving visual consistency.

19. **qt5ct**: Tool for customizing Qt5 application themes. **Purpose**: Configures appearance of Qt-based applications, ensuring unified theming across software.

20. **materia-gtk-theme**: Modern GTK theme with Material Design. **Purpose**: Enhances desktop aesthetics for GTK applications, contributing to a cohesive user interface.

21. **ttf-jetbrains-mono-nerd**: JetBrains Mono font patched with Nerd Fonts glyphs. **Purpose**: Enhances coding and terminal experience with ligatures and icons, optimizing readability in development tools.

22. **gnome-disk-utility**: Disk management application from GNOME. **Purpose**: Manages disks, partitions, and creates disk images, supporting storage configuration and maintenance.

23. **pdfslicer**: Simple application to extract, merge, rotate, and reorder pages of PDF documents. **Purpose**: Edits PDF files by slicing and rearranging pages, facilitating document manipulation.

24. **unzip**: Extracts files from .zip archives. **Purpose**: Decompresses .zip files, enabling access to compressed content.

25. **zip**: Creates and manages .zip archives. **Purpose**: Compresses files for storage or sharing, aiding in data archiving.

26. **xarchiver**: Graphical archive manager for multiple formats. **Purpose**: Simplifies archive creation and extraction via a graphical user interface.

27. **7zip**: High-compression file archiver for various formats. **Purpose**: Compresses and extracts files like .7z, .zip, and .rar, offering versatile archiving options.

28. **ffmpegthumbnailer**: Generates thumbnails for video files. **Purpose**: Creates video previews for file managers, improving media file navigation.

29. **valgrind**: Programming tool for memory debugging and profiling. **Purpose**: Detects memory leaks and analyzes program performance during development.

30. **gdb**: GNU Debugger for source-level debugging. **Purpose**: Helps developers find and fix bugs in their code through step-by-step execution analysis.

31. **dunst**: Lightweight and customizable notification daemon. **Purpose**: Displays system notifications in a clean, unobtrusive manner.

32. **brightnessctl**: Utility to control display brightness. **Purpose**: Allows easy adjustment of screen brightness from command line or scripts.

33. **autorandr**: Auto-detect connected displays and load appropriate X11 configurations. **Purpose**: Simplifies multi-monitor setup management.

34. **redshift**: Adjusts display color temperature based on time of day. **Purpose**: Reduces eye strain by shifting screen colors warmer at night.

35. **python-pip**: Package manager for Python packages. **Purpose**: Installs and manages Python libraries and tools from PyPI repository.

36. **alsa-utils**: Advanced Linux Sound Architecture utilities. **Purpose**: Provides command-line tools for audio device control and configuration.

37. **pulseaudio**: Sound server for managing audio devices and streams. **Purpose**: Enables advanced audio features like per-application volume control.

38. **pulseaudio-alsa**: ALSA configuration for PulseAudio. **Purpose**: Ensures compatibility between ALSA applications and PulseAudio sound server.

39. **pavucontrol**: PulseAudio volume control GUI. **Purpose**: Provides graphical interface for advanced audio device and stream management.

40. **anki-bin**: Flashcard program for spaced repetition learning. **Purpose**: Aids memorization through scientifically optimized repetition scheduling.

41. **pamac-aur-git**: Graphical package manager with AUR support. **Purpose**: Simplifies package management with GUI and enhanced AUR integration.

42. **net-tools**: Collection of network utilities (e.g., ifconfig, route). **Purpose**: Provides essential tools for network configuration and troubleshooting.

43. **bind-tools**: DNS utilities including dig and nslookup. **Purpose**: Enables DNS troubleshooting and network diagnostics.

44. **curl**: Command-line tool for transferring data with URLs. **Purpose**: Supports various protocols for data transfer and API interactions.

45. **wget**: Network downloader. **Purpose**: Retrieves files from the web via HTTP, HTTPS, and FTP protocols.

46. **imagemagick**: Image manipulation toolkit. **Purpose**: Converts, edits, and composes images from the command line.

47. **inkscape**: Vector graphics editor. **Purpose**: Creates and edits scalable vector graphics in SVG format.

48. **gimp**: GNU Image Manipulation Program. **Purpose**: Advanced image editing and retouching with extensive plugin support.

---
