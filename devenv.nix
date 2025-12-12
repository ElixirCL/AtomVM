{ pkgs, ... }:

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
}

