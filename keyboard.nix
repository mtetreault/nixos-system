{ config, lib, pkgs, ... }:

{
  services.xserver = {
    layout = "us,ca";
    xkbVariant = ",multix";
    xkbOptions = "grp:caps_toggle, grp_led:scroll";
  };
}