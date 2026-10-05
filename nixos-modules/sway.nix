{ pkgs, ... }:
{
 programs.sway = {
  enable = true;
  package = pkgs.sway;
 };
}
