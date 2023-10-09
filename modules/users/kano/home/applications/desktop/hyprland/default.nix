{

  wayland.windowManager.hyprland = {
    enable = true;
    systemdIntegration = true;
    # xwayland = {
    #   enable = true;
    #  };
    settings = {
      exec-once = [
      "swaybg -i /etc/nixos/assets/wallpaper.png & fcitx5 & waybar"
      ];
      "$mainMod" = "SUPER";
      monitor = [
      ",highres, auto, 1.5"
      ];
      input = {
	numlock_by_default = true;
	touchpad = {
	  natural_scroll = true;
	  };
	};
      misc = {
	disable_hyprland_logo = true;
	};
      general = {
        gaps_in = 1;
	gaps_out = 1;
	border_size = 1;
	"col.active_border" = "rgb(11111b)";
	"col.inactive_border" = "rgb(11111b)";
	cursor_inactive_timeout = 1;
	layout = "master";
	};
      decoration = {
	rounding = 10;
	};
     animations = {
       enabled = true;
       bezier = "myBezier, 0.16, 1, 0.3, 1";
       animation = [
         "windows, 1, 7, myBezier"
	 "windowsOut, 1, 7, myBezier, popin 80%"
	 "border, 1, 10, myBezier"
	 "fade, 1, 7, myBezier"
	 "workspaces, 1, 5, default"
	 ];
	 };
      master = {
        new_on_top = true;
	};
      gestures = {
        workspace_swipe = true;
	};
      windowrule = [
        "float, Rofi"
	"noborder, Rofi"
	"float, title:^(sfml)$"
	"center, title:^(sfml)$"
	];
      bind = [
      "$mainMod, SPACE, layoutmsg, orientationnext"
      "$mainMod, RETURN, layoutmsg, swapwithmaster"
      "$mainMod SHIFT, RETURN, exec, kitty"
      "$mainMod SHIFT, C, killactive"
      "$mainMod, R, exec, rofi -show drun"
      "$mainMod, P, exec, sh  $HOME/.config/rofi/bin/powermenu"
      "$mainMod, F , fullscreen"
      ", xf86audioraisevolume, exec, amixer sset Master 4%+;"
      ", xf86audiolowervolume, exec, amixer sset Master 4%-;"
      ", xf86monbrightnessup, exec, brightnessctl set 5%+"
      ", xf86monbrightnessdown, exec, brightnessctl set 5%-"
      "$mainMod, k, movefocus, u"
      "$mainMod, S, exec, grim ~/Pictures/$(date '+%Y_%m_%d_%H:%M:%S').png"
      "$mainMod, 1, workspace, 1"
      "$mainMod, 2, workspace, 2"
      "$mainMod, 3, workspace, 3"
      "$mainMod, 4, workspace, 4"
      "$mainMod, 5, workspace, 5"
      "$mainMod, 6, workspace, 6"
      "$mainMod, 7, workspace, 7"
      "$mainMod, 8, workspace, 8"
      "$mainMod, 9, workspace, 9"
      ];
    };
  };

      home.sessionVariables = {
      QT_SCALE_FACTOR = "1";
      SDL_VIDEODRIVER = "wayland";
      _JAVA_AWT_WM_NONREPARENTING = "1";
      QT_QPA_PLATFORM = "wayland";
      QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
      QT_AUTO_SCREEN_SCALE_FACTOR = "1";
      CLUTTER_BACKEND = "wayland";
      XDG_CURRENT_DESKTOP = "Hyprland";
      XDG_SESSION_DESKTOP = "Hyprland";
      XDG_SESSION_TYPE = "wayland";
};
}

