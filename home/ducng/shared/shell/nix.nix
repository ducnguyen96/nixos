{pkgs, ...}: {
  home = {
    packages = with pkgs; [
      any-nix-shell
    ];

    sessionVariables = {
      DIRENV_LOG_FORMAT = "";
    };
  };

  programs = {
  };
}
