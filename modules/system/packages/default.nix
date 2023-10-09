{ pkgs, ... }: {

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    vim
    killall
    zip
    unzip
    neovim
    gcc
    fish
    ranger
    scrot
    waybar
    git
    screen
    python3
    brightnessctl
    ];

}
