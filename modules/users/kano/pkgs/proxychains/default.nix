{
    programs.proxychains.enable = true;
    programs.proxychains.proxies = {
    myproxy =
   { type = "http";
    host = "127.0.0.1";
    port = 7890;
  };
  };
  programs.proxychains.proxies.myproxy.enable = true;

}
