# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a macOS dotfiles repository for automating Mac setup. It uses Oh My Zsh with a custom "minimal" theme and Homebrew for package management.

## Key Commands

**Fresh Mac setup:**
```bash
./fresh.sh
```
This installs Xcode CLI tools, Oh My Zsh, Homebrew, symlinks .zshrc, installs Brewfile packages, sets up project directories, clones repositories, and applies macOS preferences.

**Generate SSH key:**
```bash
./ssh.sh "email@example.com"
```

**Setup a Laravel project (must be run from ~/projects):**
```bash
setup <git-repo-url> <directory-name>
```

**Apply macOS preferences:**
```bash
source .macos
```

**Backup/restore app settings:**
```bash
mackup backup   # Save settings to iCloud
mackup restore  # Restore settings from iCloud
```

## File Structure

- `.zshrc` - Main shell config, sets `$ZSH_CUSTOM` to this repo so `*.zsh` files auto-load
- `aliases.zsh` - Shell aliases (git shortcuts, Laravel/PHP commands, directory navigation)
- `path.zsh` - PATH modifications (dotfiles bin, Composer, Node, project vendor/node_modules, fzf config)
- `Brewfile` - Homebrew packages, casks, and fonts
- `.macos` - macOS system preferences (Finder, Dock, keyboard, etc.)
- `clone.sh` - Clones Laravel/Blade UI Kit repositories to ~/Code and ~/Herd
- `minimal.zsh-theme` - Custom Oh My Zsh theme with git status

## Configuration Notes

- Dotfiles are expected at `~/.dotfiles` (referenced in `.zshrc` and `fresh.sh`)
- Mackup stores settings in iCloud (configured in `.mackup.cfg`)
- The minimal theme shows git branch/status in prompt; dirty state shown in red
- NVM for Node version management (installed via Homebrew)

## Key Aliases

**Editor:** `c.` or `code.` opens Cursor in current directory

**Laravel:** `pa` (artisan), `fresh`, `tinker`, `routes`, `queues`, `horizon`

**Testing:** `test`, `pf <name>` (filter), `coverage`

**JS:** `dev`, `build`, `nfresh` (clean reinstall)

**Git:** `main` (checkout & pull), `gcb <name>` (new branch), `wip`, `amend`, `force`

**fzf shortcuts:** `Ctrl+T` (find files), `Ctrl+R` (history search)
