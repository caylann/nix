{ config, ... }:
{
 programs.fastfetch = {
  enable = true;
  settings = {
   modules = [
    "title"
    "separator"
    "os"
    "host"
    "kernel"
    "uptime"
    "packages"
    "shell"
    "break"
    "wm"
    "terminal"
    "break"
    "cpu"
    "gpu"
    "memory"
    "swap"
    "disk"
    "break"
    "colors"
   ];
  };
 };
}
