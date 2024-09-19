{ config, pkgs, lib, ... }:
{
	home.file."${config.home.homeDirectory}/gs.sh".text = builtins.readFile ./gamescope-script.content;
}
