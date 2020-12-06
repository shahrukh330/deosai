{ sources ? import ./nix/sources.nix
, pkgs ? import sources.nixpkgs {} 
}:
pkgs.mkShell {
    buildInputs = [
        pkgs.zlib
        pkgs.htop
        pkgs.which
        pkgs.go
    ];
}
