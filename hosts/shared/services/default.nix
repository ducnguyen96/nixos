{
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./pipewire.nix
  ];

  services = {
    dbus = {
      enable = true;
      packages = with pkgs; [dconf gcr];
    };
  };
}
