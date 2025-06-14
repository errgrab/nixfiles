# ✨ My NixOS dotfiles

## ❄️ What is this?

This repository contains my Nix and NixOS configuration files, structured to manage:

- System configuration (NixOS)
- Home manager setup
- Development environment
- CLI tools and custom scripts
- Secrets (optionally with age/sops) (TODO: implementation is not committed yet)
- Per-host configurations

Inspired by the [Nix philosophy](https://nixos.org/), this setup makes my system **reproducible**, **portable**, and **manageable** from a single source of truth.

## 🗂 Structure

```bash
.nixfiles/
├── hosts/      # Host-specific configurations (per machine)
├── users/      # Home Manager configurations
├── Makefile    # Makefile for common tasks
├── flake.nix   # Entry point
└── flake.lock  # Lockfile (for reproducibility)
```
