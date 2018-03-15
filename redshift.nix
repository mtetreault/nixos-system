{ config, lib, pkgs, ... }:

{
  services.redshift = {
    enable = true;
    brightness.day = "0.8";
    brightness.night = "0.4";
    latitude = "46.8559402";
    longitude = "71.9064963";
  };

  services.geoclue2.enable = true;
}