{ pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    terminal = "kitty";
    font = "monospace";
    extraConfig = {
      drun-display-format = "{name}";
      disable-history = false;
      hide-scrollbar = false;
      window-format = " [{w}]\t\t{t:0}";
      sidebar-mode = true;
      display-drun = "   ";
      show-match = true;
      modi = "drun";
    };
    theme = "dmenu";
    };

  }
