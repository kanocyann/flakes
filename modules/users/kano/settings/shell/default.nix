{ pkgs, ... }: {
  programs.fish.enable = true;
  users.users.kano.shell = pkgs.fish;

}
