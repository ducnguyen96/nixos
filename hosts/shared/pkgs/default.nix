{
  pkgs,
  config,
  ...
}: let
  core = import ./core.nix {pkgs = pkgs;};
in {
  environment.systemPackages = with pkgs;
    [
    ]
    ++ core;
}
