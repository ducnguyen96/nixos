{
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    # Shared configuration
    ../shared
    ../shared/optional/programs/alacritty.nix
    ../shared/optional/programs/firefox.nix

    # Specific configuration
    ./desktop
    ./services
    ./X
  ];
}
