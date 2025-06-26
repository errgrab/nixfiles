{ config, pkgs, lib, ... }:
let
  kanataCfgPath = "${config.home.homeDirectory}/.config/kanata/tawa.cfg";
in {
  systemd.user.services.kanata = {
    Unit = {
      Description = "Kanata daemon";
      After = [ "graphical-session.target" ];
    };

    Service = {
      ExecStart = "${pkgs.kanata}/bin/kanata --cfg ${kanataCfgPath}";
      Restart = "on-failure";
    };

    Install = {
      WantedBy = [ "default.target" ];
    };
  };
}

