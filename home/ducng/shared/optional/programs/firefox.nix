{
  config,
  pkgs,
  ...
}: {
  # Home Manager when not using any additional Firefox options
  home.packages = with pkgs; [ firefox-wayland ];
}
