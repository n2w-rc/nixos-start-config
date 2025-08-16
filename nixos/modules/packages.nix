# This file contains the system packages configuration
{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
  vim
  # wget # <- I barely use this command-line tool.
  neofetch # For flexing.
  zed-editor # Current main IDE for everyday work.
  kdePackages.kdeconnect-kde
  git
  github-desktop # Much easier to commit things with this software here.
  krita # For continuing my digital artworks
  obs-studio # For recording/streaming.
  blender # 3d Modeling and mesh
  nodejs_24
  gh
  os-prober
  discord
  flatpak # Lunix store.
  ani-cli # For watching anime, yay.
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
  # Hyprland and other needed packages for wanting to rice.
  hyprland
  hyprlock
  swww
  waybar
  dunst
  swaynotificationcenter
  wofi
  cliphist
  inputs.browser-previews.packages.${pkgs.system}.google-chrome-dev # Browser.
  oh-my-zsh
  # Programming Languages
  rustup
  ruby
  kotlin
  # For NixOS itself
  home-manager
  ];
}
