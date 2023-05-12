{
  pkgs,
  config,
  ...
}: let
  core = import ./core.nix {pkgs = pkgs;};
in {
  imports = [./fonts.nix];
  environment.systemPackages = with pkgs;
    [
      figlet
      pfetch
    ]
    ++ core;
}
