{ pkgs, ... }: {
 nixpkgs.config.allowUnfree = true;
 
 home.packages = with pkgs; [

  # QOL
  btop
  microfetch
  yazi

  # System utils
  git

 ];
}
