{ pkgs, user, ... }: {
  programs.bash.enable = true;

  users = {
    defaultUserShell = pkgs.bash;
    users.${user} = {
      isNormalUser = true;
      extraGroups = [ "wheel" "input" "networkmanager" ];
    };
  };

  services.getty.autologinUser = user;
}
