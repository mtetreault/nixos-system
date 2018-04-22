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
      options = let
        # this line prevents hanging on network split
        automount_opts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";

      in ["${automount_opts},credentials=/etc/nixos/smb-secrets"];
    }
    {
      mountPoint = "/mnt/smb/ebook";
      device = "//mtetreault-desktop.local/ebook";
      fsType = "cifs";
      options = let
        # this line prevents hanging on network split
        automount_opts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";

      in ["${automount_opts},credentials=/etc/nixos/smb-secrets"];
    }
    {
      mountPoint = "/mnt/smb/famille";
      device = "//mtetreault-desktop.local/famille";
      fsType = "cifs";
      options = let
        # this line prevents hanging on network split
        automount_opts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";

      in ["${automount_opts},credentials=/etc/nixos/smb-secrets"];
    }
    {
      mountPoint = "/mnt/smb/mtetreault";
      device = "//mtetreault-desktop.local/mtetreault";
      fsType = "cifs";
      options = let
        # this line prevents hanging on network split
        automount_opts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";

      in ["${automount_opts},credentials=/etc/nixos/smb-secrets"];
    }
    {
      mountPoint = "/mnt/smb/software";
      device = "//mtetreault-desktop.local/software";
      fsType = "cifs";
      options = let
        # this line prevents hanging on network split
        automount_opts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";

      in ["${automount_opts},credentials=/etc/nixos/smb-secrets"];
    }
    {
      mountPoint = "/mnt/smb/video";
      device = "//mtetreault-desktop.local/video";
      fsType = "cifs";
      options = let
        # this line prevents hanging on network split
        automount_opts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";

      in ["${automount_opts},credentials=/etc/nixos/smb-secrets"];
    }
  ];
}