{ pkgs, ... }: {
 nixpkgs.config.allowUnfree = true;
 
 home.packages = with pkgs; [

  # QOL
  btop
  yazi

  # System utils
  git

 ];
}
