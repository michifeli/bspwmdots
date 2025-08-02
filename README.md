<h1 align="center">Michi's Dotfiles</h1>
<p align="center">A minimalist "retro/hacker" bspwm desktop environment for daily use on archlinux</p>


After configuring a desktop environment with Hyprland on Wayland, I was left wanting to explore something new and different, this time based on Xorg (X11). My goal was to find a minimalist and simple setup that would optimize resources to the maximum without losing that distinct retro-functional and clean aesthetic, I opted for bspwm.

My configuration aims to be both functional and simple, tailored specifically for my workflow as a Telematics Engineering student and my daily needs.

I hope this repository serves as a guide and inspiration for your 'rice'. If you have any questions or suggestions, I would greatly appreciate you sharing them, either by opening an issue here or contacting me through the methods listed on my GitHub profile.

#
> [!WARNING]
> Do not apply my settings to your system unless you fully understand what you are doing. Use at your own risk.

## Essentials
/ **Distro** &rarr; [Arch Linux](https://archlinux.org "Keep it simple, stupid") 🐧 \
/ **Window Manager** &rarr; [bspwm](https://github.com/baskerville/bspwm "A dynamic tiling window manager based on binary space partitioning") with [sxhkd](https://github.com/baskerville/sxhkd "A simple X hotkey daemon") as hotkey daemon 🏹 \
/ **Compositor** &rarr; [Picom](https://github.com/yshui/picom "For eye candy and tear-free experience") 🎨 \
/ **Bar** &rarr; [Polybar](https://github.com/polybar/polybar "Fast and highly configurable status bar") ✨ \
/ **App Launcher** &rarr; [dmenu](https://tools.suckless.org/dmenu/ "Minimalist and efficient menu for X") 🚀 \
/ **Terminal** &rarr; [Kitty](https://github.com/kovidgoyal/kitty "GPU-accelerated terminal emulator") 🐈 \
/ **Shell** &rarr; [zsh](https://www.zsh.org "The ultimate shell") 🐚 \
/ **Notifications Daemon** &rarr; [Dunst](https://github.com/dunst-project/dunst "Lightweight and customizable notification daemon") 🔔 \
/ **IDE/Editor** &rarr; [Neovim](https://github.com/neovim/neovim "Hyperextensible Vim-based text editor") 👨‍💻 \
/ **File Manager** &rarr; [Yazi](https://github.com/sxyazi/yazi "Blazing fast terminal file manager written in Rust!") 📁

## Repository structure
```
├── .config/             # Contains all the main configuration files for various programs and tools        
│   └── ...                   
├── assets/              # Screenshots, wallpapers, and other media files
├── .xinitrc             # X session startup script
├── .zshrc               # Zsh shell configuration
└── README.md            # You are here!
```

## Installation
This guide assumes a clean Arch Linux installation with git already present. Familiarity with basic terminal commands is also recommended.

1.  **Install an AUR Helper (I use paru)** \
    Some dependencies might be in the Arch User Repository (AUR). You can install [paru](https://github.com/Morganamilo/paru?tab=readme-ov-file#installation) or [yay](https://github.com/Jguer/yay#installation), which are among the most popular.

2.  **Install Core Dependencies** \
    These are the essential packages from the official Arch repositories required for the desktop environment to function.

    ```bash
    sudo pacman -S --needed ...
    ```

    ```bash
    paru -S --needed ...
    ```

4.  **Clone the Repository** \
    Start by cloning these dotfiles to your home directory.

    ```bash
    git clone https://github.com/michifeli/bspwmdots.git
    ```

5.  **Backup Existing Dotfiles (Highly Recommended!)** \
     Before stowing, make a backup of any existing dotfiles to prevent data loss.
    
6.  **Incorporate dotfiles** \
    To apply the configuration files you have two options:

    **Option A: Using GNU Stow (Recommended where applicable)** \
    Highly recommended, it is simpler and since it uses symbolic links no duplicate files are created.

    1.  **Install GNU Stow**
       
        ```bash
        sudo pacman -S --needed stow
        ```
    2.  **Stow Dotfiles**
        Navigate into your cloned repository and use stow to create symbolic links.
        For stow to work correctly, each dotfile or configuration folder you want to link should be in its own subdirectory within `~/bspwmdots/`
        
        ```bash
        cd ~/bspwmdots/
        
        # Stow .config directory
        stow .config/

        # Link individual dotfiles from the cloned repository to your home directory
        ln -s ~/bspwmdots/.zshrc ~/.zshrc
        ln -s ~/bspwmdots/.xinitrc ~/.xinitrc
        ```

    **Option B: Manual Copy** \
    Directly copy the configuration files to their respective locations.

7.  **Install Fonts** \
    For proper rendering of icons in Polybar, your shell prompt, and overall visual consistency, specific fonts are required.
    
    ```bash
    paru -S --needed ...
    
    fc-cache -fv # Refresh font cache after installation
    ```

8.  **Enable / Start Services & Autostart** \
    Ensure bspwm and other services start correctly when you log in to X.

    * **Make `bspwmrc` executable**
      
        ```bash
        chmod +x ~/.config/bspwm/bspwmrc
        ```
    * **Make `xinitrc` executable**
      
        ```bash
        chmod +x ~/.xinitrc
        ```

9.  **Reboot** \
    After setting up, simply reboot your system, to ensure all changes take effect.

## Take a look

<img align="center" src="/assets/wall2.png">
<img align="center" src="/assets/wall1.png">

## 💝 Thanks To
Thanks to these programmers for their work and making it open source so that people like me can use it, their work inspired me to develop my configurations.

[hicfool](https://github.com/hicfool) &rarr; Polybar inspiration

<img src="https://user-images.githubusercontent.com/123886904/218294072-d474a330-7464-430a-b369-91f79373dbca.svg" width="100%" title="Footer">
