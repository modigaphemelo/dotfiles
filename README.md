## About This Repository

This repository contains my configuration files for my i3wm setup and for all the programs I use on a daily basis. They are stored here for easy access should I encounter any system failures or be doing a fresh installation.

## Configuration Details
This repository includes configuration files for the following programs:
1. [x] i3wm
2. [x] i3status
3. [x] kitty

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

---
