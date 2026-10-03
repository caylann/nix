{ config, ... }:

let
 modifier = "Mod4";
in
{
 wayland.windowManager.sway.config = {
  keybindings = {
   "${modifier}+Return" = "exec alacritty";
   "${modifier}+q" = "kill";
  };
 }; 
}
