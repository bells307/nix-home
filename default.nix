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
    git
    tmux
    neovim
    fzf
    zoxide
    yazi
    neofetch
    direnv
    nix-direnv
    lazygit
    delta
    claude-code
    codex
    opencode
    nixfmt
    taplo
    stylua
    rustc
    rustfmt
    cargo
    rust-analyzer
    just
    jq
    somafm-cli
  ];
}
