{
  networking = {
    networkmanager = {
      enable = true;
      unmanaged = ["docker0" "rndis0"];
      wifi.macAddress = "random";
    };
  };

  systemd.services.NetworkManager-wait-online.enable = false;
}
