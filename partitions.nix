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
      device = "//axel-parolta-desktop.local/console";
      fsType = "cifs";
      options = let
        # this line prevents hanging on network split
        automount_opts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";

      in ["${automount_opts},credentials=/etc/nixos/smb-secrets"];
    }
    {
      mountPoint = "/mnt/smb/ebook";
      device = "//axel-parolta-desktop.local/ebook";
      fsType = "cifs";
      options = let
        # this line prevents hanging on network split
        automount_opts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";

      in ["${automount_opts},credentials=/etc/nixos/smb-secrets"];
    }
    {
      mountPoint = "/mnt/smb/famille";
      device = "//axel-parolta-desktop.local/famille";
      fsType = "cifs";
      options = let
        # this line prevents hanging on network split
        automount_opts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";

      in ["${automount_opts},credentials=/etc/nixos/smb-secrets"];
    }
    {
      mountPoint = "/mnt/smb/mtetreault";
      device = "//axel-parolta-desktop.local/mtetreault";
      fsType = "cifs";
      options = let
        # this line prevents hanging on network split
        automount_opts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";

      in ["${automount_opts},credentials=/etc/nixos/smb-secrets"];
    }
    {
      mountPoint = "/mnt/smb/software";
      device = "//axel-parolta-desktop.local/software";
      fsType = "cifs";
      options = let
        # this line prevents hanging on network split
        automount_opts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";

      in ["${automount_opts},credentials=/etc/nixos/smb-secrets"];
    }
    {
      mountPoint = "/mnt/smb/video";
      device = "//axel-parolta-desktop.local/video";
      fsType = "cifs";
      options = let
        # this line prevents hanging on network split
        automount_opts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";

      in ["${automount_opts},credentials=/etc/nixos/smb-secrets"];
    }
  ];
}