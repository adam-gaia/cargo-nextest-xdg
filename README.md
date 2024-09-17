# cargo-nextest-xdg
Provies `XDG_CONFIG_HOME` support for [cargo-nextest](https://github.com/nextest-rs/nextest/tree/cd1952c1e390e8ca200f15906d441908fa3d45f1)

## What & Why
By default, `cargo-nextest` reads its configuration from `<repo>/.config/nextest.toml`.
This script shimms `cargo-nextest`. If `<repo>/.config/nextest.toml` exists, it will execute `cargo-nextest` as usual.
If not, `cargo-nextest` will be forced to use `${XDG_CONFIG_HOME}/nextest/config.toml` for its configuration.

This tool will no longer be necessary once `cargo-nextest` has native support for user-level configuation. See [this issue](https://github.com/nextest-rs/nextest/issues/1419).

## How
The script uses [boxxy](https://github.com/queer/boxxy) to mount `<repo>/.config/nextest.toml` to `${XDG_CONFIG_HOME}/nextest/config.toml`. As `boxxy` is linux-only, so is this script.

## Usage
Run the `cargo-nextest-xdg` script in place of `cargo-nextest`. It's reccomened to alias `alias cargo-nextest=cargo-nextest-xdg`.

## Dependencies
- cargo-nextest
- boxxy
- jq

## Installing with Nix
This repo is a nix flake. The default package provies the script under the name `cargo-nextest`.
