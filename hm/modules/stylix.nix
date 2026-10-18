{ pkgs, lib, ... }:

{

 services.picom.enable = true;

 stylix = {
  enable = true;
  polarity = "dark";
  base16Scheme = "${pkgs.base16-schemes}/share/themes/black-metal-mayhem.yaml";

  targets = {
   rofi.enable = true;
   firefox = {
    enable = true;
    profileNames = [ "default" ];
   };
  };

  fonts = {
   emoji = {
    name = "Noto Color Emoji";
    package = pkgs.noto-fonts-color-emoji;
   };
   monospace = {
    name = "JetBrains Mono";
    package = pkgs.jetbrains-mono;
   };
   sansSerif = {
    name = "Noto Sans";
    package = pkgs.noto-fonts;
   };
   serif = {
    name = "Noto Serif";
    package = pkgs.noto-fonts;
   };

   sizes = {
    terminal = 12.5;
    applications = 11;
    popups = 12;
   };
  };
   
  opacity = {
   terminal = 0.85;
   popups = 0.9;
  };
 };
}
