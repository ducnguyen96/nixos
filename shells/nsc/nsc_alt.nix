
{ 
  pkgs ? import <nixpkgs> {allowUnfree = true;}
}:
let
  nsc_shared = import ./nsc_shared.nix {pkgs = pkgs;};


  tf_version = "0.12.30";
  terraform = pkgs.stdenv.mkDerivation {
    name = "terraform ${tf_version}";

    buildInputs = [
      pkgs.unzip
    ];

    src = pkgs.fetchurl {
      url = "https://releases.hashicorp.com/terraform/${tf_version}/terraform_${tf_version}_linux_amd64.zip";
      sha256 = "sha256-pka2EjKsDEAOyMwsBi9ONrWp6FFfEff19h6wP+BY8Y0=";
    };

    unpackPhase = ''
      unzip $src
      mkdir -p $out/bin
      cp terraform $out/bin/
      chmod +x $out/bin/terraform
    '';
  };
in
pkgs.mkShell {
  buildInputs = with pkgs; 
    [
      terraform
    ]
    ++ nsc_shared;
}
