{
 description = "we're so back";
 
 inputs = {
  nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
  
  home-manager = {
   url = "github:nix-community/home-manager/release-26.05";
   inputs.nixpkgs.follows = "nixpkgs";
  };
  
  zapret-discord-youtube.url = "github:kartavkun/zapret-discord-youtube";
 };
 
 outputs = { self, nixpkgs, home-manager, zapret-discord-youtube, ... }@inputs: let
  system = "x86_64-linux";
  homeStateVersion = "26.05";
  user = "caylann";
  hosts = {
   nixie = { stateVersion = "26.05"; };
  };

  makeSystem = { hostname, stateVersion }: nixpkgs.lib.nixosSystem {
   inherit system;
   specialArgs = {
    inherit inputs stateVersion hostname user;
   };
   modules = [
    ./hosts/${hostname}/configuration.nix
    ./bypass/zapret.nix
   ];
  };

  in {
   nixosConfigurations = nixpkgs.lib.genAttrs (builtins.attrNames hosts) (hostname:
    makeSystem {
     inherit hostname;
     stateVersion = hosts.${hostname}.stateVersion;
    }
   );

   homeConfigurations.caylann = home-manager.lib.homeManagerConfiguration {
    pkgs = nixpkgs.legacyPackages."${system}";
    modules = [ ./hm/home.nix ];
    extraSpecialArgs = {
     inherit inputs; 
     flakeDir = "~/nix";
    };
   };
  };
}
