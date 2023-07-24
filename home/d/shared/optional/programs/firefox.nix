{
  config,
  pkgs,
  ...
}: {

  # Home Manager programs.firefox style
  programs.firefox = {
    enable = true;
    package = pkgs.wrapFirefox pkgs.firefox-unwrapped {
      extraPolicies = {
        ExtensionSettings = {};
      };
    };
  };
}
