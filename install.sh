#!/bin/bash
# ═══════════════════════════════════════════════════════════════════════════════
# LazyOS Installer — Arch Linux (UEFI/GPT + ext4 + swap + GRUB) → LazyOS (Hyprland)
# Run from Arch ISO live environment: bash install.sh
# ═══════════════════════════════════════════════════════════════════════════════
set -euo pipefail

INSTALL_DIR="$(cd "$(dirname "$0")/install" && pwd)"

source "$INSTALL_DIR/helpers"

# ── Run each stage in order ────────────────────────────────────────────────
source "$INSTALL_DIR/preflight"
source "$INSTALL_DIR/user-input"
source "$INSTALL_DIR/disk-setup"
source "$INSTALL_DIR/base-install"

# Copy package lists into the new root so chroot scripts can read them
mkdir -p /mnt/tmp
# Strip comments and empty lines from package lists
grep -v '^\s*#' "$INSTALL_DIR/packages/base.packages" | grep -v '^\s*$' > /mnt/tmp/lazyos-base.packages
grep -v '^\s*#' "$INSTALL_DIR/packages/aur.packages"  | grep -v '^\s*$' > /mnt/tmp/lazyos-aur.packages

source "$INSTALL_DIR/configure"
source "$INSTALL_DIR/packages-install"
source "$INSTALL_DIR/dotfiles"
source "$INSTALL_DIR/finalize"
