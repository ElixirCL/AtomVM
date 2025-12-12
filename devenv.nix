{ pkgs, inputs, ... }:

let
  pkgs-old = import inputs.nixpkgs-old { system = pkgs.stdenv.system; };
in
{
  languages.erlang = {
    enable = true;
    package = pkgs.beamMinimal27Packages.erlang;
  };
  languages.elixir = {
    enable = true;
    package = pkgs.beamMinimal27Packages.elixir;
  };

  packages = with pkgs; [
    cmake
    gperf
    mbedtls
    zlib
  ];

  apple.sdk =
    if pkgs.stdenv.isDarwin
    then pkgs-old.apple-sdk_12
    else null;
}

