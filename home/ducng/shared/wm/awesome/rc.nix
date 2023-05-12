{ pkgs, lib, config, ... }: {
  home = {
    file = {
      ".config/awesome/rc.lua" = {
        executable = false;
        text = ''
          apps = {
            terminal = "alacritty";
          }
        '';
      }
    };
  };
}