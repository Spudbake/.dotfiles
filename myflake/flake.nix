{
  description = "Home Manager configuration of lincolnh";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
  };

  outputs = { nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs{
        inherit system;
        config = {
          allowUnfree = true;
          };
      };
    in {
      homeConfigurations."lincolnh" = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          };
      modules = [./home.nix];
            

        # Specify your home configuration modules here, for example,
        # the path to your home.nix.

        nixosConfigurations = {
          myNixos = nixpkgs.lib.nixosSystem{
          specialArgs = {inherit system;};
          modules = [
            ./modules/configuration.nix
            ./modules/packages.nix
          ];
        };
        };

        

        # Optionally use extraSpecialArgs
        # to pass through arguments to home.nix
      };
}
