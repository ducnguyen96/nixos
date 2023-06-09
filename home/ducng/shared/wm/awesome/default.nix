{ pkgs, lib, config, ... }: {
  home = {
    activation = {
      awesome = ''
        CONFIG="$HOME/.config/awesome"

        if [ ! -d "$CONFIG" ]; then
          ${pkgs.git}/bin/git clone https://github.com/ducnguyen96/awesomewm $CONFIG
        fi
      '';
    };
    packages = with pkgs; [
      acpi
      light
      brightnessctl
      pulseaudio
      alsa-utils
      xclip
      xorg.xev
    ];
  };
}
