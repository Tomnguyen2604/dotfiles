# My Dotfiles

This repository contains my personal configuration files (dotfiles) for macOS.

## Files Included

- `.zshrc` - Zsh shell configuration
- `.bashrc` - Bash shell configuration  
- `.bash_profile` - Bash profile configuration
- `.zprofile` - Zsh profile configuration
- `.gitconfig` - Git configuration
- `.hyper.js` - Hyper terminal configuration

## Installation

To use these dotfiles on a new system:

1. Clone this repository:
   ```bash
   git clone https://github.com/YOUR_USERNAME/dotfiles.git
   cd dotfiles
   ```

2. Create symlinks to your home directory:
   ```bash
   ./install.sh
   ```

   Or manually create symlinks:
   ```bash
   ln -sf $(pwd)/.zshrc ~/.zshrc
   ln -sf $(pwd)/.bashrc ~/.bashrc
   ln -sf $(pwd)/.bash_profile ~/.bash_profile
   ln -sf $(pwd)/.zprofile ~/.zprofile
   ln -sf $(pwd)/.gitconfig ~/.gitconfig
   ln -sf $(pwd)/.hyper.js ~/.hyper.js
   ```

3. Reload your shell or restart your terminal

## Backup

Before installing, it's recommended to backup your existing dotfiles:
```bash
cp ~/.zshrc ~/.zshrc.backup
cp ~/.bashrc ~/.bashrc.backup
# ... etc
```

## Notes

These configurations are tailored for macOS and may need adjustments for other operating systems.
