{ pkgs, ... }: {
  boot = {
  kernelPackages = pkgs.linuxPackages_latest;
    tmp = {
    # cleanOnBoot = true;
    useTmpfs = true;
    };
    loader = {
      systemd-boot = {
      enable = true;
      editor = false;
      consoleMode = "max";
      extraInstallCommands = ''
      default_cfg=$(cat /boot/loader/loader.conf | grep default | awk '{print $2}')
      sed -i '/loglevel=4/ s/$/ quiet splash vt.global_cursor_default=0/' /boot/loader/entries/$default_cfg
        '';
      };
      efi.canTouchEfiVariables = true;
      timeout = 1;
      };
    };

}

