#!/bin/bash
# ═══════════════════════════════════════════════════════════════════════════════
# LazyOS Installer — Arch Linux (UEFI/GPT + ext4 + swap + GRUB) → LazyOS (Hyprland)
# Run from Arch ISO live environment: bash install.sh
# ═══════════════════════════════════════════════════════════════════════════════
set -euo pipefail

INSTALL_DIR="$(cd "$(dirname "$0")/install" && pwd)"

source "$INSTALL_DIR/helpers"

# ── Run each stage in order ────────────────────────────────────────────────
bash "$INSTALL_DIR/preflight"
source "$INSTALL_DIR/user-input"
bash "$INSTALL_DIR/disk-setup"
bash "$INSTALL_DIR/base-install"

# Copy package lists into the new root so chroot scripts can read them
cp "$INSTALL_DIR/packages/base.packages" /mnt/tmp/lazyos-base.packages
cp "$INSTALL_DIR/packages/aur.packages"  /mnt/tmp/lazyos-aur.packages

bash "$INSTALL_DIR/configure"
bash "$INSTALL_DIR/packages-install"
bash "$INSTALL_DIR/dotfiles"
bash "$INSTALL_DIR/finalize"
