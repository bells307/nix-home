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
    kitty
    neovim
    tmux
    direnv
    nix-direnv
    delta
    opencode
  ];
}
