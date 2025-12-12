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
      default = {pkgs, ...}: {
        imports = [
          ./nvim
          ./tmux
          ./kitty
          ./zsh
          ./direnv
          ./opencode
          ./git
        ];

        home.stateVersion = "25.11";

        home.packages = with pkgs; [
          fzf
          zoxide
          yazi
          neofetch
          claude-code
          codex
          opencode
          nixfmt
          taplo
          stylua
          rustc
          rustfmt
          nil
          alejandra
          cargo
          rust-analyzer
          just
          jq
          somafm-cli
        ];
      };
      
      nvim = ./nvim;
      tmux = ./tmux;
      kitty = ./kitty;
      zsh = ./zsh;
      direnv = ./direnv;
      git = ./git;
    };
  };
}
