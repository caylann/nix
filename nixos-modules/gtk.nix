{ pkgs, ... }:
{
 programs.dconf.enable = true;

 environment.systemPackages = with pkgs; [
  gnome-themes-extra
 ];
 
 environment.variables = {
  GTK_THEME = "Adwaita-dark";
 };
}
