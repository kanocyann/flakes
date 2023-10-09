{ pkgs, ... }: {
   nix = {
      package = pkgs.nixUnstable;
      channel.enable = false;
      settings = {
        auto-optimise-store = true;
	experimental-features = [ "nix-command" "flakes" "ca-derivations" "auto-allocate-uids" "cgroups" ];
	auto-allocate-uids = true;
	use-cgroups = true;
      };
    };
}
