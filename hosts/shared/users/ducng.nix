{
  config,
  pkgs,
  ...
}: let
  ifTheyExist = groups: builtins.filter (group: builtins.hasAttr group config.users.groups) groups;
in {
  programs.zsh.enable = true;
  users.mutableUsers = false;
  users.defaultUserShell = pkgs.zsh;
  users.users.ducng = {
    description = "Duc Nguyen";
    initialPassword = "1";
    isNormalUser = true;
    shell = pkgs.zsh;
    uid = 1000;
    extraGroups =
      [
        "wheel"
        "video"
        "audio"
        "input"
      ]
      ++ ifTheyExist [
        "network"
        "networkmanager"
        "wireshark"
        "mysql"
        "docker"
        "podman"
        "git"
        "libvirtd"
      ];

    packages = [pkgs.home-manager];
  };

  home-manager.users.ducng = import ../../../home/ducng/${config.networking.hostName};
}
