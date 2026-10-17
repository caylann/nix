{ pkgs, ... }:
{
 services.xserver = {
  enable = true;
  autoRepeatDelay = 235;
  autoRepeatInterval = 32;

  windowManager.dwm = {
   enable = true;
   package = pkgs.dwm.overrideAttrs {
    src = ../dotfiles/dwm;
   };
  };

  displayManager.sessionCommands = ''
   ${pkgs.xrandr}/bin/xrandr --output HDMI-A-0 --mode 1920x1080 --rate 60 --primary &
   ${pkgs.feh}/bin/feh --bg-scale ~/Pictures/wp/nostalgicsky1.jpg  &
  '';

  deviceSection = ''
   Option "TearFree" "true"
  '';
 };
}
