#! /usr/bin/env nix-shell
#! nix-shell -i bash -p curl racket nixpkgs-fmt

# How to run: nix-shell

echo "Creating download directory"
mkdir -p ./downloads

echo "Gathering materials"
curl "https://download.racket-lang.org/releases/8.12/catalog/pkgs-all" --output ./downloads/release-catalog.lock
curl "https://pkgs.racket-lang.org/pkgs-all?version=8.12" --output ./downloads/live-catalog.lock

echo "Building results"
racket ./update.rkt

echo "Formatting result"
nixpkgs-fmt ./racket-package-defs.nix

echo "Removing directory"
rm -rf ./downloads
