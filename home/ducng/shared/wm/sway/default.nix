{ pkgs, lib, config, ... }: {
  wayland.windowManager.sway = {
    enable = true;
    config = rec {
      modifier = "Mod1";
    };
  };
}
