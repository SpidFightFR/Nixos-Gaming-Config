{ config, lib, pkgs, ... }:
{
  services.displayManager = {
    enable = true;
    autoLogin.enable = true;
    autoLogin.user = "nixos";
  };
}
