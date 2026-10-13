{ pkgs, ... }:

{
 home.packages = with pkgs; [ 
  swaybg
  autotiling
 ];

 systemd.user.services.autotiling = {
  Unit = {
   Description = "Autotiling script for sway";
    After = [ "sway-session.target" ];
    PartOf = [ "sway-session.target" ];
  };

  Service = {
   ExecStart = "${pkgs.autotiling}/bin/autotiling";
   Restart = "on-failure";
  };

  Install = {
   WantedBy = [ "sway-session.target" ];
  };
 };

 wayland.windowManager.sway = {
  enable = true;
  systemd.enable = true;
  systemd.xdgAutostart = true;
  package = pkgs.sway;
  checkConfig = false;
  config.terminal = "alacritty";
  wrapperFeatures.base = true;
  
  config = {

   bindkeysToCode = true;
   
   input = {
    "type:keyboard" = {
      xkb_layout = "us,ru";
      xkb_options = "grp:alt_shift_toggle";
    };
   };

   bars = [];

   startup = [
    {
     command = "swaymsg workspace number 1 && waybar";
     always = true;
    }
   ];

   output = {
    "HDMI-A-1" = {
     res = "1920x1080@60Hz";
    };
     
    #"*" = { bg = "~/nix/wallpaper/pond_shed.png fill"; };
   };

   gaps = {
    inner = 2;
    outer = 2;
   };

   window = {
    titlebar = false;
    border = 3;
   };

   floating = {
    modifier = "Mod4";
    border = 3;
   };
  };

  extraConfig = '' 
   for_window [app_id="Alacritty"] opacity 0.88
  '';
 };
}
