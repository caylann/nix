{ config, pkgs, ... }: 

#let
 #flakeDir = "/home/caylann/nix";
#in
{

 imports = [
  ./home-pkgs.nix
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
}
