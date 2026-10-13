{ pkgs, ... }: {
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
