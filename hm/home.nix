{ config, pkgs, inputs, ... }: 
{
 imports = [
  ./modules
  inputs.stylix.homeModules.stylix
 ];
 
 home = {
  username = "caylann";
  homeDirectory = "/home/caylann";
  stateVersion = "26.05";
 };

 programs.neovim = {
  enable = true;
  defaultEditor = true;
  plugins = with pkgs.vimPlugins; [
  ];
 };

 nixpkgs.config.allowUnfree = true;
 
 home.packages = with pkgs; [

  # cool stuff
  cava

  # Desktop apps
  discord
  obsidian
  obs-studio
  vlc

  # QOL
  btop
  microfetch
  yazi
  thunar

  # CLI utils
  git
  gh

 ];

}
