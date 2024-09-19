{ config, lib, pkgs, inputs, ... }:
{
  # Enable sound.
  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };
}
