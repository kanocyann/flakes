{
  security.sudo.enable = false;

  security.doas = {
    enable = true;
    extraConfig = ''
      permit nopass :wheel
      '';
      };

}
