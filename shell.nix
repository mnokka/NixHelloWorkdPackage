{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.python3
  ];

  shellHook = ''
    echo "Development shell -- Hello World!"
  '';

}