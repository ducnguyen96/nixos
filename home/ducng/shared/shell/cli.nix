{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    bc
    unrar
    unzip
    wget
    zip
  ];

  programs = {
    exa.enable = true;
    man.enable = true;

    fzf = {
      enable = true;
      enableZshIntegration = true;
    };

    zoxide = {
      enable = true;
      enableZshIntegration = true;
    };

    dircolors = {
      enable = true;
      enableZshIntegration = true;
    };
  };
}
