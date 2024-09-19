{ config, lib, pkgs, ... }:
{
  #I don't use nano, i don't need it.
  programs.nano.enable = false;

  #System packages
  environment.systemPackages = with pkgs; [
      git
      wget
      curl
      home-manager
    ];
}
