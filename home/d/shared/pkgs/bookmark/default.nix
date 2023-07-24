{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  name = "bookmark";
  src = ./.;

  installPhase = ''
    mkdir -p $out/bin
    cp $src/bookmark.sh $out/bin/bookmark
    chmod +x $out/bin/bookmark
  '';
}
