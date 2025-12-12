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
}
