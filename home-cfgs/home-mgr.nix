{ config, pkgs, inputs,  ... }:
{
   imports = [
    inputs.home-manager.nixosModules.home-manager
   ];
   
   ###HOME MANAGER
   #Configure home-manager
    home-manager = {
        backupFileExtension = "hm-bak";
        useGlobalPkgs = true;

        users.nixos =
            { config, lib, pkgs, inputs, ... }:
            {
            # Read the changelog before changing this value
            home.stateVersion = "24.05";

            # insert home-manager config
            imports = [
                ./bash.nix
                ./user-pkgs.nix
                ./nvim.nix
                ./git.nix
                ./gamescope-script-import.nix
            ];
    		

	    home.homeDirectory = "/home/nixos";
        };
    };

}
