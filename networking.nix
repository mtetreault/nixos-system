{ config, lib, pkgs, ... }:

{
  networking = {
    hostName = "mtetreault-desktop";
    useDHCP = true;

    firewall.allowedTCPPorts = [ 139 445 ];
    firewall.allowedUDPPorts = [ 137 138 ];
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