{ config, pkgs, inputs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      # Adds things inside modules.
      ./modules/index.nix
      # Adds the desktop settings separated.
      ./desktop/desktop-settings.nix
      inputs.stylix.nixosModules.stylix
    ];

  # Configure Nix package and enable flakes and nix-command
  nix.package = pkgs.nix;
  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';
  # Bootloader.
  boot.loader.systemd-boot.enable = false;
  boot.loader.efi.canTouchEfiVariables = true;
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # OR

  stylix.base16Scheme = {
    base00 = "282828";
    base01 = "3c3836";
    base02 = "504945";
    base03 = "665c54";
    base04 = "bdae93";
    base05 = "d5c4a1";
    base06 = "ebdbb2";
    base07 = "fbf1c7";
    base08 = "fb4934";
    base09 = "fe8019";
    base0A = "fabd2f";
    base0B = "b8bb26";
    base0C = "8ec07c";
    base0D = "83a598";
    base0E = "d3869b";
    base0F = "d65d0e";
  };

  # Don't forget to apply wallpaper

  stylix.image = ./kita.png;

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Set your time zone.
  time.timeZone = "Asia/Manila";
  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Enable CUPS to print documents.
  # services.printing.enable = true; <- I definitely don't need a printing service.

  security.rtkit.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Importing home-manager
  # home-manager.users.n2w-rc = import ./home.nix;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget

    boot.loader.grub = {
    enable      = true;
    device      = "nodev";
    efiSupport = true;
    useOSProber = true;
    #extraEntries = ''
    #  menuentry "EndeavourOS (Custom)" {
    #    search --set=root --fs-uuid 81bfba4c-8235-4f1a-aba2-c7403f1880b1
    #    linux /boot/vmlinuz-linux root=UUID=81bfba4c-8235-4f1a-aba2-c7403f1880b1 rw
    #    initrd /boot/initramfs-linux.img
    #  }
    #'';
  };
  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05"; # Did you read the comment?

}
