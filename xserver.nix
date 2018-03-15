{ config, lib, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    videoDrivers = [ "nvidia" ];

    desktopManager.xfce.enable = true;
    displayManager.sddm.enable = true;
    displayManager.sddm.autoNumlock = true;
  };
}
