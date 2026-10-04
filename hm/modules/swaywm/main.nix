{
 wayland.windowManager.sway = {
  enable = true;
  config.terminal = "alacritty";
  wrapperFeatures.base = true;
  
  config = {
   bars = [];

   output = {
    "HDMI-A-1" = {
     res = "1920x1080@60Hz";
    };
   };

   gaps = {
    inner = 5;
    outer = 7;
   };

   floating.modifier = "Mod4";
  };
 };
}
