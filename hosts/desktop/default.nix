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

  services = {
    xserver = {
      displayManager = {
        sddm.enable = true;
        defaultSession = "none+awesome";
      };

      windowManager.awesome = {
        enable = true;
      };

      libinput = {
        enable = true;
        touchpad = {naturalScrolling = true;};
      };
      xkbOptions = "caps:escape";
    };
  };

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  system.stateVersion = "23.05";
}
