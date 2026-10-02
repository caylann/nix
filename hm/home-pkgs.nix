{ pkgs, ... }: {
 nixpkgs.config.allowUnfree = true;
 
 home.packages = with pkgs; [
  
  # System utils
  git

  # QOL
  btop
  yazi

 ];
}
