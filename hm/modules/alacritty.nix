{ pkgs, ... }:
{
 programs.alacritty = {
  enable = true;
  settings = {
   
   env = {
    WINIT_X11_SCALE_FACTOR = "1.0";
   };
   
   cursor = {
    style = {
     shape = "Beam";
     blinking = "On";
    };
   };
   
   window = {
    padding = {
     x = 7;
     y = 7;
    };
   };
  };
 };
}
