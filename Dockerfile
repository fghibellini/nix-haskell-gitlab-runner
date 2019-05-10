FROM lnl7/nix:2.2

RUN nix-env -iA \
 nixpkgs.openssh \
 nixpkgs.git \
 nixpkgs.gnutar \
 nixpkgs.cabal-install \
 nixpkgs.haskellPackages.hpack
