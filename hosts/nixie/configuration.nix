{ config, lib, pkgs, ... }:

{
 imports = [
  ./hardware-configuration.nix
  ../../nixos-modules
 ];
  
 hardware.graphics = {
  enable = true;
  enable32Bit = true;
 };
 boot.initrd.kernelModules = [ "amdgpu" ];
 services.xserver.videoDrivers = [ "amdgpu" ];
 hardware.graphics.extraPackages = with pkgs; [
  libva-vdpau-driver
  libvdpau-va-gl
 ];
 
 # Flakes
 nix.settings.experimental-features = ["nix-command" "flakes"];

 nix.settings.auto-optimise-store = true;
 nix.settings.max-jobs = "auto";
 nix.settings.cores = 0;

 #nix.settings.substituters = [ "https://tsinghua.edu.cn" "http://cache.nixos.org/" ];

 # Unfree
 nixpkgs.config.allowUnfree = true;

 # Use latest kernel.
 boot.kernelPackages = pkgs.linuxPackages_latest;

 networking.hostName = "nixie"; # Define your hostname.
 networking.networkmanager.enable = true;
 time.timeZone = "Europe/Samara";
 i18n.defaultLocale = "en_US.UTF-8";

 # services.flatpak.enable = true;

 #xdg.terminal-exec = {
 # enable = true;
 # settings = {
 #  default = [ "alacritty.desktop"];
 # };
 #}; 

 # Steam
 programs.steam = {
  enable = true;
 };

 programs.firefox.enable = true;

 # Enable CUPS to print documents.
 # services.printing.enable = true;
  
 # Cleaning garbage
 nix.gc = {
  automatic = true;
  dates = "weekly";
  options = "--delete-older-than 30d";
 };

 # List packages installed in system profile.
 environment.systemPackages = with pkgs; [
  nftables
  neovim
  alacritty
  fastfetch
  home-manager
 ];

 # services.openssh.enable = true;

 # don't touch it
 system.stateVersion = "26.05";
}
