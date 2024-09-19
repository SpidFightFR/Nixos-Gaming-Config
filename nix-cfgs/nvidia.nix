{ config, lib, pkgs, inputs, ... }:

/*
NVIDIA CONFIGURATION
Please do check this config and tweak it to your liking,
This one is great for me, perhaps not for you.
*/

{
	#NixOS Stable - 24.05 still calls the graphical togable option as "OpenGL"
	hardware.opengl = {
		enable = true;
		driSupport = true;
		driSupport32Bit = true;
	};

	#For nixos-unstable, they renamed it
	#hardware.graphics.enable = true;

        services.xserver.enable = true;
        services.xserver.videoDrivers = ["nvidia"];

	hardware.nvidia ={
		modesetting.enable = true;
		powerManagement.enable = false;
		powerManagement.finegrained = false;

		open = true;

		nvidiaSettings = false;

# 		package = pkgs.linuxPackages_6_10.nvidiaPackages.beta;
		package = config.boot.kernelPackages.nvidiaPackages.latest;

	};
}
