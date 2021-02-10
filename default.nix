{
  pkgs ? import ./nix/nixpkgs.nix {}
, python ? pkgs.python37
, synthpy ? pkgs.callPackage ./nix/build.nix { inherit python; }
}:
let
  pythonWithPackages = python.withPackages (pp: with pp; [
    synthpy
    jupyterlab
    numpy
    scipy
    pandas
  ]);
in with pkgs; mkShell {
  buildInputs = [
    synthPackages.synth
    pythonWithPackages
  ];
}
