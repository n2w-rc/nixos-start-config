{ config, pkgs, ... }:

{
    services = {
        flatpak.enable = true;
        # Replacing - xserver.enable = true;
        pulseaudio.enable = false;
        openssh.enable = true;
        udisks2.enable = true;
        gvfs.enable = true;
        pipewire = {
            enable = true;
            alsa.enable = true;
            alsa.support32Bit = true;
            pulse.enable = true;
        };
        displayManager.sddm.enable = true;
        desktopManager.plasma6.enable = true;
    };
    security = {
        polkit.enable = true;
    };
}
