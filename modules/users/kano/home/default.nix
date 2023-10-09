{ pkgs, inputs, ... }:

{

  home =  {
    username = "kano";
    homeDirectory = "/home/kano";
  };

  imports = [
    ./applications
    ./themes
    ./environments
  ];


  home.stateVersion = "23.11";

  programs.home-manager.enable = true;

}

