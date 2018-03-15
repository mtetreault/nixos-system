{ config, lib, pkgs, ... }:

{
  users.groups = {
    samba_share = {};
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.extraUsers.mtetreault = {
    name = "mtetreault";
    group = "users";
    extraGroups = [
      "wheel" "disk" "audio" "video" "networkmanager" "systemd-journal" "vboxusers" "samba_share" "pulse"
    ];
    createHome = true;
    home = "/home/mtetreault";
    shell = pkgs.bashInteractive + "/bin/sh";
  };
  users.extraUsers.sarchambault = {
    name = "sarchambault";
    group = "users";
    extraGroups = [
      "wheel" "disk" "audio" "video" "networkmanager" "systemd-journal" "vboxusers" "samba_share"
      "pulse"
    ];
    createHome = true;
    home = "/home/sarchambault";
    shell = pkgs.bashInteractive + "/bin/sh";
  };
}