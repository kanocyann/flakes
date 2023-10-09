{ pkgs, ... }:

{
    programs.fish = {
    enable = true;
    functions = {
      fish_greeting = ""; 
      };
    shellAliases = {
    "b" = "doas nixos-rebuild switch --flake /etc/nixos/.#kano --option substituters https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store";
    "clean" = "doas nix profile wipe-history --profile /nix/var/nix/profiles/system && doas nix store gc --debug";
    "bproxy" = "doas proxychains4 nixos-rebuild switch --flake /etc/nixos/.#kano";
    };
    loginShellInit = ''
        set TTY1 (tty)
        [ "$TTY1" = "/dev/tty1" ] && exec Hyprland
      '';
    # shellInit = ''
    #  export TERM=xterm
    #  __git.init
    # '';
    plugins = [
      {
        name = "git";
        src = pkgs.fetchFromGitHub {
          owner = "jhillyerd";
          repo = "plugin-git";
          rev = "0d597a23ce2e9a067131effca5aeb1a1068de0d0";
          sha256 = "sha256-MfrRQdcj7UtIUgtqKjt4lqFLpA6YZgKjE03VaaypNzE=";
        };
      }
      {
        name = "done";
        src = pkgs.fetchFromGitHub {
          owner = "franciscolourenco";
          repo = "done";
          rev = "d6abb267bb3fb7e987a9352bc43dcdb67bac9f06";
          sha256 = "sha256-6oeyN9ngXWvps1c5QAUjlyPDQwRWAoxBiVTNmZ4sG8E=";
        };
      }
      {
        name = "puffer";
        src = pkgs.fetchFromGitHub {
          owner = "nickeb96";
          repo = "puffer-fish";
          rev = "fd0a9c95da59512beffddb3df95e64221f894631";
          sha256 = "sha256-aij48yQHeAKCoAD43rGhqW8X/qmEGGkg8B4jSeqjVU0=";
        };
      }
    ];
  };

}

