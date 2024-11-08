{
  description = "Home Manager configuration of marc";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    second.url = "github:nixos/nixpkgs/nixos-24.05";
    #second.url = "github:nixos/nixpkgs/5809e404707c53a08dd30d4fa92e10e61523a11f";
    
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, second, ... }:
    let
      system = "x86_64-linux";
      username = "marc";
      pkgs = nixpkgs.legacyPackages.${system};
      secondpkg = second.legacyPackages.${system};
    in {
      homeConfigurations.${username} = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;


        # Specify your home configuration modules here, for example,
        # the path to your home.nix.
        modules = [ ./home.nix ];

        extraSpecialArgs = {
          inherit secondpkg;
        };

        # Optionally use extraSpecialArgs
        # to pass through arguments to home.nix
      };
    };
}
