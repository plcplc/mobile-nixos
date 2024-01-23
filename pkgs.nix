let
  sha256 = "sha256:1gvi4vlq1cxyi3w2mqm939c5ib5509a2ycpwyki51jdgcpkh4x9c";
  rev = "684c17c429c42515bafb3ad775d2a710947f3d67";
  # PLC history:
  #sha256 = "sha256:1fhv0lfj7khfr0fvwbpay3vq3v7br86qq01yyl0qxls8nsq08y0c";
  # huh? sha256 = "sha256:100gindslgwl8z291i0707mfh9wfc9bd1lpif3cw73y94bygnwzl";
  # sha256 = "sha256:08izhl39nbd4g8r810mmcz4i7d908f7523s0djadd8krif07jj2w";
  # rev = "872fceeed60ae6b7766cc0a4cd5bf5901b9098ec";

  # last uncommented:
  # rev = "1603d11595a232205f03d46e635d919d1e1ec5b9";

in
builtins.trace "(Using pinned Nixpkgs at ${rev})"
import (fetchTarball {
  url = "https://github.com/NixOS/nixpkgs/archive/${rev}.tar.gz";
  inherit sha256;
})
