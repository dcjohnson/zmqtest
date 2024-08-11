{
  description = "ZmqTest";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
  };

  outputs = { self, nixpkgs }: {
    packages.x86_64-darwin.default =
      # Notice the reference to nixpkgs here.
      with import nixpkgs { system = "x86_64-darwin"; };
      stdenv.mkDerivation {       
        name = "ZmqTest";
        src = self;

        nativeBuildInputs = [ cmake ];
      };
  };
}
