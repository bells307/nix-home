{
  description = "Home Manager configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs: {
    homeManagerModules = {
      default = ./default.nix;
      nvim = ./nvim;
      tmux = ./tmux;
      kitty = ./kitty;
      zsh = ./zsh;
      direnv = ./direnv;
      git = ./git;
    };
  };
}
