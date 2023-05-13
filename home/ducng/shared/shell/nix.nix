{ pkgs, ... }: {
  home = {
    packages = with pkgs; [
      any-nix-shell
      nixpkgs-fmt
    ];

    sessionVariables = {
      DIRENV_LOG_FORMAT = "";
    };
  };

  programs = { };
}
