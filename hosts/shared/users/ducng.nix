{
  config,
  pkgs,
  ...
}: let
  ifTheyExist = groups: builtins.filter (group: builtins.hasAttr group config.users.groups) groups;
in {
  users.mutableUsers = false;
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
  programs.zsh.enable = true;

  home-manager.users.ducng = import ../../../home/ducng/${config.networking.hostName};
}
