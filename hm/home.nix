{ config, pkgs, ... }: 
{
 imports = [
  ./modules
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

  # Desktop apps
  obsidian
  
  # QOL
  btop
  microfetch
  yazi

  thunar

  # System utils
  git

 ];

}
