{
  projectRootFile = "flake.nix";
  programs = {
    alejandra.enable = true;
    deadnix.enable = true;
    shellcheck.enable = true;
    shfmt.enable = true;
  };
  settings.formatter = {
    shellcheck = {
      includes = ["cargo-nextest-xdg"];
    };
    shfmt = {
      includes = ["cargo-nextest-xdg"];
    };
  };
}
