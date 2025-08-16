{ config, pkgs, ... }:

{
  home.username = "n2w-rc";
  home.homeDirectory = "/home/n2w-rc";

  # Define home-manager ver.
  home.stateVersion = "25.05";

  home.sessionVariables.SHELL = "${pkgs.zsh}/bin/zsh";

  imports = [
    ./shell/default.nix
    ./modules/default.nix
  ];

  # Set google-chrome-unstable as the default browser
  xdg.mimeApps.defaultApplications = {
    "x-scheme-handler/http" = [ "google-chrome-dev.desktop" ];
    "x-scheme-handler/https" = [ "google-chrome-dev.desktop" ];
  };
  nixpkgs.config.allowUnfree = true;

  # programs.git = {
  #   enable = true;
  #   userName = "Your Name";
  #   userEmail = "your.email@example.com";
  # };
}
