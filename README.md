# nix-home

## Usage

### In nix-darwin

```nix
{
  inputs = {
    nix-home.url = "github:bells/nix-home";
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

### Standalone (without nix-darwin/NixOS)

```bash
home-manager switch --flake github:bells/nix-home#bells
```
