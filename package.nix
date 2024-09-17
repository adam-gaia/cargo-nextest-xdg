{pkgs, ...}:
pkgs.writeShellApplication {
  name = "cargo-nextest";

  runtimeInputs = with pkgs; [
    boxxy
    cargo-nextest
    jq
  ];

  text = builtins.readFile ./cargo-nextest-xdg;
}
