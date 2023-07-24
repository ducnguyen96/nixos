{
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./pipewire.nix
    ./pritunl.nix
  ];

  services = {
    dbus = {
      enable = true;
      packages = with pkgs; [dconf gcr];
    };
  };
}
