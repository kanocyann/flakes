{
    programs.waybar = {
      enable = true;
      systemd = {
        enable = false;
        target = "graphical-session.target";
      };
      style = ''
               * {
                 font-family: "monospace";
                 font-size: 14pt;
                 font-weight: normal;
                 border-radius: 0px;
                 transition-property: background-color;
                 transition-duration: 0.5s;
               }
               @keyframes blink_red {
                 to {
                   background-color: rgb(242, 143, 173);
                   color: rgb(26, 24, 38);
                 }
               }
               .warning, .critical, .urgent {
                 animation-name: blink_red;
                 animation-duration: 1s;
                 animation-timing-function: linear;
                 animation-iteration-count: infinite;
                 animation-direction: alternate;
               }
               window#waybar {
                 background-color: #1b1b1b;
               }
               window > box {
                 margin-left: 5px;
                 margin-right: 5px;
		 padding: 10px 4px;
                 background-color: transparent;
               }
	 #workspaces {
	   padding-left: 5px;
	   }
         #workspaces button {
	         color: rgb(217, 224, 238);
		 background: #16181c;
		 border-radius: 999px;
                 margin-left: 6px;
               }
         #workspaces button.active {
                 color: #f1f1f1;
		 background: #1f2324;
		 border-radius: 999px;
               }
         #workspaces button.urgent {
                 color: #f3f3f3;
               }
         #workspaces button:hover {
                 background-color: #1f2124;
                 color: #f3f3f3;
               }
               tooltip {
                 background: #1b1b1b;
               }
               tooltip label {
                 color: rgb(217, 224, 238);
               }
         #custom-launcher {
	         padding-top: 3px;
                 font-size: 20px;
                 color: rgb(136, 152, 176);
               }
         #clock, #backlight, #pulseaudio, #network, #battery {
                 padding-left: 10px;
                 padding-right: 10px;
               }
         #clock {
                 color: rgb(217, 224, 238);
            }
         #backlight {
                 color: #c6bda2;
               }
         #pulseaudio {
                 color: #a5bec6;
               }
         #network {
                 color: #a2a8c6;
               }

         #network.disconnected {
                 color: rgb(255, 255, 255);
               }
         #battery.charging, #battery.full, #battery.discharging {
                 color: #c6a2a2;
               }
         #battery.critical:not(.charging) {
                 color: rgb(136, 152, 176);
               }
      '';
      settings = [{
        "layer" = "top";
        "position" = "top";
        modules-left = [
          "custom/launcher"
          "hyprland/workspaces"
        ];
        modules-center = [
          "clock"
        ];
        modules-right = [
          "pulseaudio"
          "backlight"
          "network"
          "battery"
        ];
        "custom/launcher" = {
          "format" = " 󰠖 ";
          "tooltip" = false;
        };
        "custom/cava-internal" = {
          "tooltip" = false;
        };
        "hyprland/workspaces" = {
	  on-scroll-up = "hyprctl dispatch workspace r-1";
          on-scroll-down = "hyprctl dispatch workspace r+1";
          format = "{icon}";
          format-icons = {
            "1" = "1";
            "2" = "2";
            "3" = "3";
            "4" = "4";
            "5" = "5";
            "6" = "6";
            "7" = "7";
            "8" = "8";
            "9" = "9";
            "10" = "10";
            # "active" = " ";
            "default" = " ";
          };
        };
        "backlight" = {
          "device" = "intel_backlight";
          "on-scroll-up" = "light -A 5";
          "on-scroll-down" = "light -U 5";
          "format" = "{icon} {percent}%";
          "format-icons" = [ "󰃝" "󰃞" "󰃟" "󰃠" ];
        };
        "pulseaudio" = {
          "scroll-step" = 1;
          "format" = "{icon} {volume}%";
          "format-muted" = "󰖁 Muted";
          "format-icons" = {
            "default" = [ "" "" "" ];
          };
          "on-click" = "pamixer -t";
          "tooltip" = false;
        };
        "battery" = {
          "interval" = 10;
          "states" = {
            "warning" = 20;
            "critical" = 10;
          };
          "format" = "{icon} {capacity}%";
          "format-icons" = [ "󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹" ];
          "format-full" = "{icon} {capacity}%";
          "format-charging" = "󰂄 {capacity}%";
          "tooltip" = false;
        };
        "clock" = {
          "interval" = 1;
          "format" = "{:%I:%M %p  %A %b %d}";
          "tooltip" = true;
          "tooltip-format"= "<tt>{calendar}</tt>";
        };
        "network" = {
          "format-disconnected" = "󰯡 Disconnected";
          "format-ethernet" = "󰀂 {ifname} ({ipaddr})";
          "format-linked" = "󰖪 {essid} (No IP)";
          "format-wifi" = "󰖩 {essid}";
          "interval" = 1;
          "tooltip" = false;
        };
      }];
    };
}

