{ config, ... }:

let
 modifier = "Mod4";
in
{
 wayland.windowManager.sway.config = {
  keybindings = {
   
   # Basic
   "${modifier}+Return" = "exec alacritty";
   "${modifier}+q" = "kill";

   # Floating
   floating.modifier = "${modifier}";

   # Move focus
   "${modifier}+h" = "focus left"; 
   "${modifier}+j" = "focus down";
   "${modifier}+k" = "focus up";
   "${modifier}+l" = "focus right";

   # Workspaces
   "${modifier}+1" = "workspace number 1";
   "${modifier}+2" = "workspace number 2";
   "${modifier}+3" = "workspace number 3";
   "${modifier}+4" = "workspace number 4";
   "${modifier}+5" = "workspace number 5";
   "${modifier}+6" = "workspace number 6";
   "${modifier}+7" = "workspace number 7";
   "${modifier}+8" = "workspace number 8";
   "${modifier}+9" = "workspace number 9";
   "${modifier}+0" = "workspace number 10";
  };
 }; 
}
