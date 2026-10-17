{ pkgs, ... }:
{
 services.xserver = {
  enable = true;
  autoRepeatDelay = 210;
  autoRepeatInterval = 50;

  windowManager.dwm = {
   enable = true;
   package = pkgs.dwm.overrideAttrs {
    src = ../dotfiles/dwm;
   };
  };

  displayManager.sessionCommands = ''
   ${pkgs.xorg.xrandr}/bin/xrandr --output HDMI-A-0 --mode 1920x1080 --rate 60 --primary
  '';

  deviceSection = ''
   Option "TearFree" "true"
  '';
 };
}
