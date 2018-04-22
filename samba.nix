{ config, lib, pkgs, ... }:

{
  services.samba = {
    enable = true;
    enableNmbd = true;
    enableWinbindd = true;
    nsswins = true;
    securityType = "user";
    extraConfig = "
      workgroup = WORKGROUP
      min protocol = SMB2
      guest account = nobody
      map to guest = bad user
      encrypt passwords = yes
      client plaintext auth = no
      browsable = yes
      guest ok = yes
      read only = no
      force group = samba_share
      directory mask = 0774
      create mask = 0774
    ";
    shares = {
      console = {
        path = "/mnt/data/console";
      };
      ebook = {
        path = "/mnt/data/ebook";
      };
      famille = {
        path = "/mnt/data/family";
        "guest ok" = "no";
        "valid users" = "sarchambault, mtetreault";
      };
      mtetreault = {
        path = "/mnt/data/mtetreault";
        "guest ok" = "no";
        "force user" = "mtetreault";
        "valid users" = "mtetreault";
      };
      sarchambault = {
        path = "/mnt/data/sarchambault";
        "guest ok" = "no";
        "force user" = "sarchambault";
        "valid users" = "sarchambault";
      };
      software = {
        path = "/mnt/data/software";
      };
      video = {
        path = "/mnt/data/video";
      };
    };
  };
}