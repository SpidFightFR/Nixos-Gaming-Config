{
  description = "Nixos Gaming configuration";

  inputs = {
    nixpkgs = {
    	url = "github:nixos/nixpkgs?ref=nixos-24.05";
    };
    nixpkgs-unstable = {
        	url = "github:nixos/nixpkgs?ref=nixos-unstable";
    };
    home-manager = {
    	url = "github:nix-community/home-manager/release-24.05";
        inputs.nixpkgs.follows = "nixpkgs";
    };
    nixos-hardware = {
        url = "github:nixos/nixos-hardware";
    };
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, nixos-hardware, ... }@inputs: {
	nixosConfigurations = {
		#hostname goes as first arg
		nixos-gaming = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			specialArgs = { inherit inputs; };
			modules = [ ./configuration.nix ];
		};
	};

  };
}
