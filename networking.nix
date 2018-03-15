{ config, lib, pkgs, ... }:

{
  networking = {
    hostName = "mtetreault-desktop";
    useDHCP = true;
  };

  services.avahi = {
    enable = true;
    nssmdns = true;
    reflector = true;
    ipv4 = true;
    ipv6 = false;
    publish.enable = true;
    publish.userServices = true;
    interfaces = [ "enp8s0" ];
    hostName = "mtetreault-desktop";
  };
}