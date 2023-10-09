{
   environment.persistence."/nix/persist" = {
     directories = [
       "/etc/nixos"
       "/var/lib"
       "/var/log"
     ];
     files = [
       "/etc/machine-id"
     ];
     users.kano = {
       directories = [
         "Downloads"
	 "Music"
	 "Pictures"
	 "Documents"
	 "Videos"
	 ".local/share/nvim"
	 "test"
	 "code"
         {directory = ".ssh"; mode = "0700";}
     ];
       files = [
	 ".npmrc"
       ];
       };
       };
}
