# nix-home

Home Manager configuration for bells' environments.

## Usage

### In nix-darwin

```nix
{
  inputs = {
    nix-home.url = "github:bells/nix-home";
    # or for local testing:
    # nix-home.url = "path:/Users/bells/nix-home";
  };

  outputs = { nix-home, home-manager, ... }: {
    darwinConfigurations.mac = {
      modules = [
        home-manager.darwinModules.home-manager
        {
          home-manager.users.bells = nix-home.homeManagerModules.default;
        }
      ];
    };
  };
}
```

### In NixOS

```nix
{
  inputs = {
    nix-home.url = "github:bells/nix-home";
  };

  outputs = { nix-home, home-manager, ... }: {
    nixosConfigurations.hostname = {
      modules = [
        home-manager.nixosModules.home-manager
        {
          home-manager.users.bells = nix-home.homeManagerModules.default;
        }
      ];
    };
  };
}
```

### Standalone (без nix-darwin/NixOS)

```bash
home-manager switch --flake github:bells/nix-home#bells
```

## Structure

- `default.nix` - Main entry point
- `nvim/` - Neovim configuration
- `tmux/` - Tmux configuration
- `kitty/` - Kitty terminal configuration
- `zsh/` - Zsh shell configuration
- `direnv/` - Direnv configuration
