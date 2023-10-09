{ pkgs, ... }: {

  systemd.services.clash = {
  wantedBy = [ "multi-user.target" ];
  after = [ "network-online.target" ];
  serviceConfig.Restart = "on-failure";
  script =  "${pkgs.clash}/bin/clash -d /var/lib/clash";
  };
  
}
