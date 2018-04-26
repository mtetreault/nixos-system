{ config, lib, pkgs, ... }:

{
  fileSystems = [
    {
      mountPoint = "/mnt/data";
      label = "data";
      fsType = "ext4";
    }

    {
      mountPoint = "/home";
      label = "home";
      fsType = "ext4";
    }
    {
      mountPoint = "/mnt/vms";
      label = "vms";
      fsType = "ext4";
    }
    {
      mountPoint = "/mnt/smb/console";
      device = "//mtetreault-desktop.local/console";
      fsType = "cifs";
      options = ["credentials=/etc/nixos/smb-secrets,uid=mtetreault,gid=users"];
    }
    {
      mountPoint = "/mnt/smb/ebook";
      device = "//mtetreault-desktop.local/ebook";
      fsType = "cifs";
      options = ["credentials=/etc/nixos/smb-secrets,uid=mtetreault,gid=users"];
    }
    {
      mountPoint = "/mnt/smb/famille";
      device = "//mtetreault-desktop.local/famille";
      fsType = "cifs";
      options = ["credentials=/etc/nixos/smb-secrets,uid=mtetreault,gid=users"];
    }
    {
      mountPoint = "/mnt/smb/mtetreault";
      device = "//mtetreault-desktop.local/mtetreault";
      fsType = "cifs";
      options = ["credentials=/etc/nixos/smb-secrets,uid=mtetreault,gid=users"];
    }
    {
      mountPoint = "/mnt/smb/software";
      device = "//mtetreault-desktop.local/software";
      fsType = "cifs";
      options = ["credentials=/etc/nixos/smb-secrets,uid=mtetreault,gid=users"];
    }
    {
      mountPoint = "/mnt/smb/video";
      device = "//mtetreault-desktop.local/video";
      fsType = "cifs";
      options = ["credentials=/etc/nixos/smb-secrets,uid=mtetreault,gid=users"];
    }
  ];
}