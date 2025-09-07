{ pkgs, ... }:

{
    home.packages = with pkgs; [
        htop
        pkgs.nerd-fonts.jetbrains-mono
        btop
        neovim
        neofetch
        gcc15
        python3Full
        starship
        ani-cli
        jdk24
        proton-pass
        gh
        vesktop
        tree
        discord
        nodejs
        ffmpeg
        unzip
        kitty
        blender # 3d Modeling and mesh
        krita # For continuing my digital artworks
        github-desktop # Much easier to commit things with this software here.
        git
        kdePackages.kdeconnect-kde
        kdePackages.kwallet
        zed-editor # Current main IDE for everyday work.
        obs-studio # For recording/streaming.
        # for fun stuff
        playerctl
        cmatrix
        # For Programming
        rust-analyzer
        rustfmt
        dotnet-sdk_9
    ];
}
