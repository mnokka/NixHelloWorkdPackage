{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation rec {
  pname = "hello-world";
  version = "1.0.0";

  src = ./.;

  buildInputs = [ pkgs.python3 ];

  installPhase = ''
    mkdir -p $out/bin
    cp hello.py $out/bin/hello-world
    chmod +x $out/bin/hello-world
  '';

  meta = with pkgs.lib; {
    description = "A simple hello-world script in Python";
    license = licenses.mit;
    maintainers = [ "mika.nokka1@gmail.com" ];  # Directly list email
  };
}
