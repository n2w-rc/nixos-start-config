{ pkgs, ... }:

{
    fonts = {
        packages =  with pkgs; [
            noto-fonts
            noto-fonts-cjk-sans
            noto-fonts-emoji
            liberation_ttf
            dejavu_fonts
        ];
        fontconfig = {
            defaultFonts = {
                serif = [ "DejaVu Serif" "Noto Serif" ];
                sansSerif = [ "DejaVu Sans" "Noto Sans" ];
                monospace = [ "DejaVu Sans Mono" "Noto Sans Mono" ];
                emoji = [ "Noto Color Emoji" ];
            };
        };
    };
}
