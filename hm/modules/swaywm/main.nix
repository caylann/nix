{ pkgs, ...}:

{
 home.packages = [ pkgs.swaybg ];

 wayland.windowManager.sway = {
  enable = true;
  package = pkgs.swayfx;
  checkConfig = false;
  config.terminal = "alacritty";
  wrapperFeatures.base = true;
  
  config = {
   bars = [];

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
   };

   floating.modifier = "Mod4";
  };

  extraConfig = ''
   blur enable
   blur_passes 3
   blur_radius 7
   blur_xray disable

   for_window [shell=".*"] opacity 0.85
  '';
 };
}
