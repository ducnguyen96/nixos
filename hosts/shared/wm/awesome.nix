{ lib, pkgs, inputs, outputs, ... }:

{
  services = {
    xserver = {
      enable = true;

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

  environment.systemPackages = with pkgs;
    [
      pulsemixer
      imagemagick
      rofi
      feh
      ranger
    ]
}