# This file contains the system packages configuration
{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
  vim
  os-prober
  flatpak # Loonix store.
  proton-pass
  protonvpn-gui
  efibootmgr # I don't want to bother going to UEFI settings to boot into NixOS, so here it is.
  # Fonts, lowkey important if you don't want to see a block of whatever.
  noto-fonts
  noto-fonts-cjk-sans
  jetbrains-mono
  fira-code
  noto-fonts-emoji
  dejavu_fonts
  liberation_ttf
  inputs.browser-previews.packages.${pkgs.system}.google-chrome-dev # Browser.
  oh-my-zsh
  # Programming Languages
  rustup
  ruby
  kotlin
  # For NixOS itself
  home-manager
  # System Desktop Environment
  waybar
  hyprlock
  hyprpaper
  hyprland
  swaync
  ];
}
