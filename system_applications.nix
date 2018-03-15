{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [   
     vim
     git
     libu2f-host
     python3
     gnupg
     redshift
     rawtherapee
     config.services.samba.package
     transmission_gtk
     wget
     evince
     iftop
     unzip
     gparted
     galculator
     ];
}
