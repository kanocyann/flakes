{
   networking = {
   hostName = "nixos";

   proxy = {
     default = "http://127.0.0.1:7890";
     };
   
   # hosts = {
   #   "185.199.109.133" = [ "raw.githubusercontent.com" ];
   #   "185.199.111.133" = [ "raw.githubusercontent.com" ];
   #   "185.199.110.133" = [ "raw.githubusercontent.com" ];
   #   "185.199.108.133" = [ "raw.githubusercontent.com" ];
   # };

     useDHCP = false;
     wireless.iwd.enable = true;
     };
     
     systemd = {
     network.enable = true;
     network.wait-online.enable = false;
     network.networks."20-wlan0" = {
       matchConfig.Name = "wlan0";
       networkConfig.DHCP = "ipv4";
       };
       };


}
