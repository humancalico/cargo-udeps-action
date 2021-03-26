COPY entrypoint.sh /entrypoint.sh

FROM nixos/nix

RUN nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs
RUN nix-channel --update

# Install Rust
RUN nix-env -iA nixpkgs.rustup

# Install cargo-udeps
RUN nix-env -iA nixpkgs.udeps

ENTRYPOINT ["/entrypoint.sh"]
