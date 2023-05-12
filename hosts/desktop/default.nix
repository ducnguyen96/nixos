{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    # Shared configuration across all machines
    ../shared

    # Select the user configuration
    ../shared/users/ducng.nix

    # Specific configuration
    ./hardware-configuration.nix

    # window manager
    ../shared/wm/awesome.nix
  ];

  boot = {
    loader = {
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };

      grub = {
        enable = true;
        version = 2;
        device = "nodev";
        efiSupport = true;
        useOSProber = true;
        enableCryptodisk = true;
        configurationLimit = 3;
      };
    };
  };

  networking = {
    hostName = "desktop";
    networkmanager.enable = true;
    useDHCP = false;
  };

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  system.stateVersion = "23.05";
}
