{pkgs, ...}: {
  systemd.packages = [ pkgs.pritunl-client ];
  systemd.targets.multi-user.wants = [ "pritunl-client.service" ];
}
