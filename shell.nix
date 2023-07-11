{ pkgs ? import (fetchTarball https://github.com/NixOS/nixpkgs/archive/8ad5e8132c5dcf977e308e7bf5517cc6cc0bf7d8.tar.gz) {}}:

  pkgs.mkShell {
    packages = [
      pkgs.ruby_3_1
      pkgs.rubyPackages.pry
    ];
  }
