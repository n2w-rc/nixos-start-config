{ pkgs, ... }:

{
    users.users.n2w-rc = {
        isNormalUser = true;
        description = "n2w-rc";
        extraGroups = [ "networkmanager" "wheel" ];
        shell = pkgs.nushell; # Set zsh as the default login shell
        openssh.authorizedKeys.keys = [
            "empty-string"
        ];
        packages = with pkgs; [
        kdePackages.kate
        ];
    };
}
