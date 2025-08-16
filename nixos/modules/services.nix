{ config, pkgs, ... }:

{
    services = {
        flatpak.enable = true;
        xserver.enable = true;
        pulseaudio.enable = false;
        openssh.enable = true;
        pipewire = {
            enable = true;
            alsa.enable = true;
            alsa.support32Bit = true;
            pulse.enable = true;
        };
        displayManager.sddm.enable = true;
        desktopManager.plasma6.enable = true;
    };
}
