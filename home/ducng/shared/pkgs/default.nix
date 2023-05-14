{
  lib,
  pkgs,
  ...
}: {
  home.packages = lib.attrValues {
    inherit
      (pkgs)
      fcitx5
      fcitx5-gtk
      fcitx5-unikey
      fcitx5-configtool
      ;
  };
}
