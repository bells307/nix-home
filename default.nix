{pkgs, ...}: {
  imports = [
    ./nvim
    ./tmux
    ./kitty
    ./zsh
    ./direnv
    ./opencode
    ./git
  ];

  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    zsh
    tmux
    fzf
    zoxide
    yazi
    neofetch
    nix-direnv
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
}
