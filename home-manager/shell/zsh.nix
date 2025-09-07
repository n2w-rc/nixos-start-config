{ config, pkgs, lib, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "sudo"
        "docker"
      ];

    };

    initContent = lib.mkOrder 550 ''
      neofetch
      export STARSHIP_CONFIG="$HOME/.config/starship.toml"
      eval "$starship init zsh"
      export ZED_ALLOW_ROOT=true
      #  if [[ -r "${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme" ]]; then
      #    source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
      #  fi
      # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
      # [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
    '';
  };

  # Make sure the necessary packages are installed
  home.packages = with pkgs; [
    zsh-powerlevel10k
  ];
}
