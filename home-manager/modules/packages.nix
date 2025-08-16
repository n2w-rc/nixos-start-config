{ pkgs, ... }:

{
    home.packages = with pkgs; [
        htop
        pkgs.nerd-fonts.jetbrains-mono
        btop
        neovim
        gcc15
        python3Full
        rofi
        starship
        brightnessctl
        hyprshot
        # for fun stuff
        cmatrix
        playerctl
    ];
}
