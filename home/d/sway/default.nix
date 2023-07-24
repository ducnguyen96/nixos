{
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    # Shared configuration
    ../shared
    ../shared/optional/programs/firefox.nix

    # Specific configuration
    ./desktop
    ./services

    # Window Manager configuration
    ../shared/wm/sway
  ];
}
