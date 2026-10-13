{
 programs.waybar = {
  enable = true;
  style = ./style.css;
  settings = {

   mainBar = {

    layer = "top";
    position = "top";
    height = 21;
    modules-left = ["sway/workspaces"];
    modules-center = ["sway/window"];
    modules-right = ["sway/language" "custom/weather" "pulseaudio" "battery" "clock" "tray"];

   # "sway/workspaces" = {
   #  disable-scroll = true;
   #  show-special = true;
   #  special-visible-only = true;
   #  all-outputs = false;
   #  format = "{icon}";
   #  format-icons = {
   #   "1" = "";
   #   "2" = "";
   #   "3" = "";
   #   "4" = "";
   #   "5" = "";
   #   "6" = "";
   #   "7" = "";
   #   "8" = "";
   #  };

     persistent-workspaces = {
      "1" = [ ];
      "2" = [ ];
      "3" = [ ];
      "4" = [ ];
      "5" = [ ];
      "6" = [ ];
      "7" = [ ];
      "8" = [ ];
     };

     "sway/window" = {
      format = "{title}";
     };
   };
  };
 };
}
