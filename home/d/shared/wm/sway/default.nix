{ pkgs, lib, config, ... }: {
  wayland.windowManager.sway = {
    enable = true;
    config = rec {
      # Use kitty as default terminal
      terminal = "foot"; 
    };
  };
}