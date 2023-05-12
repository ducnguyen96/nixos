{pkgs, ...}: {
  home = {
    packages = with pkgs; [
    ];

    sessionVariables = {
      DIRENV_LOG_FORMAT = "";
    };
  };

  programs = {
  };
}
