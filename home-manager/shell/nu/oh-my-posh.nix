{ pkgs, ... }:
{
  programs.oh-my-posh = {
    enable = true;
    enableNushellIntegration = true;   # enable the nu integration
    # Either pick a packaged theme or provide settings:
    # useTheme = "jandedobbeleer";      # (example theme name)
    # or provide a JSON config
    # settings = builtins.fromJSON (builtins.readFile "${pkgs.oh-my-posh}/share/oh-my-posh/themes/space.omp.json");
  };

  # make sure nu is available when activation runs:
  home.packages = with pkgs; [ nushell oh-my-posh ];
}
