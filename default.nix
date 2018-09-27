{ nixpkgs ? (import <nixpkgs> {} )}:
with nixpkgs;
stdenv.mkDerivation {
  name = "s3-backup";
  buildInputs = [ s3cmd ];
}
