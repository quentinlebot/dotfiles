# AGENTS.md - Dotfiles Repository Guide

## Repository Structure
This is a personal dotfiles repository for Arch Linux using GNU Stow for symlink management.

## Build/Test Commands
- **Install dotfiles**: `./install.sh` (Arch Linux only)
- **Deploy configs**: `stow <directory>` (e.g., `stow nvim`, `stow tmux`)
- **Remove configs**: `stow -D <directory>`
- **Test shell config**: `zsh -n ~/.zshrc` (syntax check)

## Code Style Guidelines
- **Shell scripts**: Use `#!/usr/bin/env bash` or `#!/bin/bash` shebang
- **Indentation**: 4 spaces for shell scripts, 2 spaces for Lua
- **Variables**: Use `${var}` syntax for shell variable expansion
- **Comments**: Use `#` for shell, `--` for Lua
- **File permissions**: Make scripts executable with `chmod +x`

## Configuration Standards
- **Neovim**: Lua-based config in `nvim/.config/nvim/lua/`
- **Tmux**: Config uses TPM plugin manager, catppuccin theme
- **Shell**: Zsh with oh-my-zsh, starship prompt, vi mode enabled
- **Terminal**: Ghostty with JetBrains Mono Nerd Font
- **Tools**: Uses modern alternatives (eza, bat, fd, ripgrep, zoxide)

## Key Paths
- Scripts: `scripts/scripts/`
- Configs: `<app>/.config/<app>/`