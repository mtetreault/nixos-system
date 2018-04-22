{ config, lib, pkgs, ... }:

{
  services.xserver = {
    enable = true;

    desktopManager.xfce = {
      enable = true;
      thunarPlugins = [ pkgs.xfce.thunar-archive-plugin ];
    };
    displayManager.sddm.enable = true;
    displayManager.sddm.autoNumlock = true;
  };
}
