{ config, lib, pkgs, ... }:
{
    home.packages = with pkgs; [
    fastfetch
    wget
    curl
    htop
    nvtopPackages.nvidia
    tree
    usbutils

    #Graphics stuff
    mesa-demos
    vulkan-tools
    mangohud

    #Steam
    steamcmd
    ];
}
