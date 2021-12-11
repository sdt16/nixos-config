#!/usr/bin/env bash

set -eux

if [ -f /etc/nixos/hardware-configuration.nix ]; then
    echo "This looks like an already setup system, exiting for safety!"
    exit 1
fi

if [ $(id -u) -ne 0 ]; then 
    echo "Use sudo."
    exit 1
fi

# Partitioning
parted /dev/sda -- mklabel gpt
parted /dev/sda -- mkpart primary 512MiB -8GiB
parted /dev/sda -- mkpart primary linux-swap -8GiB 100%
parted /dev/sda -- mkpart ESP fat32 1MiB 512MiB
parted /dev/sda -- set 3 esp on

# Format the filesystems
mkfs.ext4 -L nixos /dev/sda1
mkswap -L swap /dev/sda2
mkfs.fat -F 32 -n boot /dev/sda3

# Setup the mounts
mount /dev/disk/by-label/nixos /mnt
mkdir -p /mnt/boot
mount /dev/disk/by-label/boot /mnt/boot

# Just in case I make a VM with virtually no memory
swapon /dev/sda2

# Set it up
nixos-generate-config --root /mnt

# I'll figure out the sed one day...
nano /mnt/etc/nixos/configuration.nix

nixos-install

echo "Remember to run passwd for the standard user!"