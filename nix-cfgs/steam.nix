{ config, lib, pkgs, ... }:
{
	programs = {
		gamescope = {
			enable = true;
			capSysNice = true;
	};
	steam = {
		enable = true;
		gamescopeSession.enable = true;
		};
	};
	hardware.xpadneo.enable = true;
	environment = {
		loginShellInit = ''
			[[ "$(tty)" = "/dev/tty1" ]] && ./gs.sh
			'';
		};
}
