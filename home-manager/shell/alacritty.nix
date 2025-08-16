{ pkgs, ... }:

{
    programs.alacritty = {
        enable = true;
        package = pkgs.alacritty;
        settings = {
            window.dimensions = {
                lines = 25;
                columns = 125;
            };
            font = {
                normal = {
                    family = "Fira Code";
                    style = "Regular";
                };
                size = 9;
            };
            mouse = { hide_when_typing = true; };
            selection.save_to_clipboard = true;
            colors = {
                draw_bold_text_with_bright_colors = true;
                primary = {
                    background = "#1d261a";
                    foreground = "#ebdbb2";
                };
                normal = {
                    black = "#282828";
                    red = "#cc241d";
                    green = "#98971a";
                    yellow = "#d79921";
                    blue = "#458588";
                    magenta = "#b16286";
                    cyan = "#689d6a";
                    white = "#a89984";
                };
                bright = {
                    black = "#928374";
                    red = "#fb4934";
                    green = "#b8bb26";
                    yellow = "#fabd2f";
                    blue = "#83a598";
                    magenta = "#d3869b";
                    cyan = "#8ec07c";
                    white = "#ebdbb2";
                };
            };
            general.live_config_reload = true;
        };
    };
}
