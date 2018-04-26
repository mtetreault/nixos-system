{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
     google-chrome
     messenger-for-desktop
     vscode     
     hexchat
     keepass
     virtualbox
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
  
  virtualisation = {
    virtualbox.host.enable = true;
  };

  services.plex = {
    openFirewall = true;
    enable = true;
    managePlugins = false;
  };
  nixpkgs.config.virtualbox.enableExtensionPack = true;
}
