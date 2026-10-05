{ pkgs, ... }:

{
 home.packages = [ pkgs.swaybg ];

 wayland.windowManager.sway = {
  enable = true;
  systemd.enable = true;
  systemd.xdgAutostart = true;
  package = pkgs.sway;
  checkConfig = false;
  config.terminal = "alacritty";
  wrapperFeatures.base = true;
  
  config = {
   bars = [];

   startup = [
    {
     command = "swaymsg workspace number 1";
     always = true;
    }
   ];

   output = {
    "HDMI-A-1" = {
     res = "1920x1080@60Hz";
    };
     
    "*" = { bg = "~/nix/wallpaper/nordic1street.png fill"; };
   };

   gaps = {
    inner = 5;
    outer = 3;
   };

   window = {
    titlebar = false;
    border = 4;
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
