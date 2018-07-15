{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
     google-chrome
     vscode     
     hexchat
     keepass
     vagrant
     insync
     pidgin-with-plugins
     geoclue2
     discord
     slack
     plex
     inkscape
     wine
     putty
     gimp
     bluedevil
     simple-scan
     ];

  nixpkgs.config.packageOverrides = pkgs: with pkgs; {
     pidgin-with-plugins = pkgs.pidgin-with-plugins.override {
        plugins = with pkgs; [
           purple-hangouts
           purple-facebook
        ];
     };
     keepass = pkgs.keepass.override {
        plugins = with pkgs; [
           keepass-keepasshttp
        ];
     };
  };
  
  services.plex = {
    openFirewall = true;
    enable = true;
    managePlugins = false;
  };
}
