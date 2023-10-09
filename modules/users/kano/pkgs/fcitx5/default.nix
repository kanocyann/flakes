{ pkgs, ... }: {

  i18n = {
  inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-chinese-addons fcitx5-rime fcitx5-gtk libsForQt5.fcitx5-qt
      ];
      };
      };
      
  systemd.user.tmpfiles.users.kano.rules = ["L+ %h/.config/fcitx5 0755 kano users - ${./fcitx5}"];

}
