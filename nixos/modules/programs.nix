{ config, pkgs, ... }:

{
    programs = {
        hyprland.enable = true;
        hyprland.xwayland.enable = true;
        hyprlock.enable = true;
        zsh.enable = true;
        # firefox.enable = false;
        kdeconnect.enable = true;
    };
}
