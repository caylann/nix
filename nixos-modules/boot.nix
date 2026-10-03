{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.consoleMode = "max";
  boot.kernelParams = [
   "video=efifb:mode=0"
   "video=1920x1080@60"
  ];
}
