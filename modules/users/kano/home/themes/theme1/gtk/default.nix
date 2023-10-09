{

  imports = [
  ./theme.nix
  ];

  home = {
    # pointerCursor = {
    #   package = pkgs.catppuccin-cursors;
    #   name = "Catppuccin-Frappe-Dark";
    #  }

    # pointerCurser.gtk.enable = true;

    sessionVariables = {
      GTK_THEME = "Catppuccin-Macchiato-Compact-Rosewater-Dark";
      };

    };

}

