{ config, pkgs, inputs, ... }:

let
  system = "x86_64-linux";
  cael = inputs.caelestia-shell;
  quick = inputs.quickshell;
in {
  programs.hyprland.enable = true;
  services.xserver.enable = true;
  environment.systemPackages = with pkgs; [
    (cael.packages.${system}.default)
    (quick.packages.${system}.default or quickshell)
    pipewire
    xdg-desktop-portal-hyprland
    ddcutil
    brightnessctl
  ];
}
