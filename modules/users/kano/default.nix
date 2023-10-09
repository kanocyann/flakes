{
    users.users = {
        kano = {
            isNormalUser = true;
            extraGroups = ["wheel"];
	    password = "1";
       };
    };

    home-manager = {
      useUserPackages = true;
      useGlobalPkgs = true;
      users.kano = import ./home;
      };

    imports = [
      ./pkgs
      ./settings
      ];

}
