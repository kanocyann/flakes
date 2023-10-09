{ pkgs, config, ...}:{
  users.users.kano.packages = ( with pkgs; [
      timg
      figlet
      ttyper
      nodejs
      tdesktop
      the-powder-toy
      swaybg
      gnupg
      clash-verge
      grim
      neofetch
      clash
      ]) ++ ( with config.nur.repos; [
         # aleksana.go-musicfox
	 ]);

  programs.hyprland.enable = true;

  imports = [
  ./clash
  ./fcitx5
  ./proxychains
  ];

}
