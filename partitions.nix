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
  ];
}