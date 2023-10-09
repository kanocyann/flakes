{

  programs.alacritty = {
    enable = true;
    settings = {
      font = {
        normal = {
	  family = "monospace";
        };
	size = 16;
      };
      window = {
        padding = {
	  x = 8;
	  y = 5;
	  };
	  };
            colors = {
	      primary = {
    background = "#1b1b1b";
    foreground = "#d8dee9";
    dim_foreground = "#a5abb6";
    };
  cursor = {
    text = "#2e3440";
    cursor = "#d8dee9";
    };
  vi_mode_cursor = {
    text = "#2e3440";
    cursor = "#d8dee9";
    };
  selection = {
    text = "#f1f1f1";
    background = "#4c566a";
    };
  search = {
    matches = {
      foreground = "#f1f1f1";
      background = "#88c0d0";
      };
    footer_bar = {
      background = "#434c5e";
      foreground = "#d8dee9";
      };
      };
  normal = {
    black = "#3b4252";
    red = "#b08e8e";
    green = "#c7eac9";
    yellow = "#eae5c7";
    blue = "#6291b9";
    magenta = "#7a617d";
    cyan = "#8eb0ae";
    white = "#e5e9f0";
    };
  bright = {
    black = "#4c566a";
    red = "#b08e8e";
    green = "#c7eac9";
    yellow = "#eae5c7";
    blue = "#6291b9";
    magenta = "#7a617d";
    cyan = "#8eb0ae";
    white = "#eceff4";
    };
  dim = {
    black = "#373e4d";
    red = "#b08e8e";
    green = "#c7eac9";
    yellow = "#eae5c7";
    blue = "#6291b9";
    magenta = "#7a617d";
    cyan = "#8eb0ae";
    white = "#aeb3bb";
    };

};
   };
   };

}
