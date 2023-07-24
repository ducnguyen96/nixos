{pkgs, ...}: {
  imports = [./nix.nix];

  i18n = {
    inputMethod = {
      enabled = "ibus";
      ibus.engines = with pkgs.ibus-engines; [
        bamboo
      ];
    };
  };

  time = {
    timeZone = "Asia/Ho_Chi_Minh";
    hardwareClockInLocalTime = true;
  };
}
