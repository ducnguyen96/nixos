{ 
  pkgs ? import <nixpkgs> {allowUnfree = true;}
}:
let
  nsc_shared = import ./nsc_shared.nix {pkgs = pkgs;};
in
pkgs.mkShell {
  buildInputs = with pkgs; 
    [
      terraform  
    ]
    ++nsc_shared;
}
