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
      enable = true;

      displayManager = {
        sddm.enable = true;
        defaultSession = "none+awesome";
      };

      windowManager.awesome = {
        enable = true;
        config = {
          theme = {
            # Colors
            bg_normal = "#282c34";
            fg_normal = "#abb2bf";
            bg_focus = "#528bff";
            fg_focus = "#ffffff";
            bg_urgent = "#ff0000";
            fg_urgent = "#ffffff";
            # Font
            font = "Roboto Mono 10";
            # Taglist settings
            taglist_bg_empty = "#282c34";
            taglist_fg_empty = "#5b6268";
            taglist_bg_occupied = "#282c34";
            taglist_fg_occupied = "#c678dd";
            taglist_bg_urgent = "#282c34";
            taglist_fg_urgent = "#ff6c6b";
            taglist_bg_focus = "#528bff";
            taglist_fg_focus = "#ffffff";
            # Layoutbox settings
            layoutbox_bg_normal = "#282c34";
            layoutbox_fg_normal = "#abb2bf";
            layoutbox_bg_focus = "#528bff";
            layoutbox_fg_focus = "#ffffff";
          };
        };
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
