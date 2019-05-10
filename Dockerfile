FROM lnl7/nix:2.2

RUN nix-env -iA \
   nixpkgs.openssh \
   nixpkgs.git \
   nixpkgs.gnutar \
   nixpkgs.findutils \
   nixpkgs.cabal-install \
 && \
 nix-env -i -E '(x: let nixpkgs = x.nixpkgs {}; in nixpkgs.haskell.lib.justStaticExecutables nixpkgs.haskellPackages.hpack)' \
 && \
 nix-collect-garbage -d
