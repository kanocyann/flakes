{ pkgs, ... }:
{
  gtk = {
    enable = true;
    # cursorTheme = {
    #  name = "Catppuccin-Frappe-Dark";
    # };
    theme = {
      name = "Catppuccin-Macchiato-Compact-Rosewater-Dark";
      package = pkgs.catppuccin-gtk.override {
        accents = [ "rosewater" ];
        size = "compact";
        tweaks = [ "rimless" "black" ];
        variant = "macchiato";
      };
    };
  };

}
