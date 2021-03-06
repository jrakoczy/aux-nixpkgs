# Auxiliary nixpkgs

A set of my custom Nix packages.

## Usage

### Option 1.

Add another Nix channel:

```bash
nix-channel --add 'https://github.com/jrakoczy/aux-nixpkgs/archive/master.tar.gz' 'jrakoczy'
```

Then all you need to do is keep the channel updated by invoking:

```bash
nix-channel --update
```

The drawback of this approach is that the auxiliary packages won't get
auto-upgraded as it's not possible to assign multiple channels to a
corresponding option in the Nix config.

The advantage is that this method seems to be the most idiomatic/
consistent with the way other packages are managed. It also provides a
rollbacking mechanism.

### Option 2.

Add a custom variable to `NIX_PATH`:

```bash
export NIX_PATH="jrakoczy=https://github.com/jrakoczy/aux-nixpkgs/archive/master.tar.gz:$NIX_PATH"
```
From now on you, can refer to the packages set by typing `<jrakoczy>`. For
instance to install `desktop-environment`, execute:

```bash
nix-env -f '<jrakoczy>' -i 'desktop-environment'
```

This is more convenient as you don't need to remember about updating the
channel. No rollbacks tho.

### Option 3.

Import it as a variable in your NixOS configuration file:

```nix
{
  pkgs = import <nixpkgs> { }; # Define whichever version of nixpkgs you want.

  jrakoczy-pkgs = import
    (
      pkgs.fetchFromGitHub {
        owner = "jrakoczy";
        repo = "aux-nixpkgs";
        rev = ?; # Change me.
        sha256 = ?; # Change me.
      }
    )
    { inherit pkgs; };
}
```

If you aim for maximum purity, then this is the way to go.
