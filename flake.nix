{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    blueprint.url = "github:numtide/blueprint";
  };
  
  outputs = inputs: inputs.blueprint { inherit inputs; };
}
