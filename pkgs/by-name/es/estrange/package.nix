{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:
rustPlatform.buildRustPackage rec {
  pname = "estrange";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "waynevanson";
    repo = "estrange";
    rev = "${version}";
    hash = "sha256-vn3gr+lHYr9AdW86w9LOS6ZWILANGwpV7wZDRIBSNoQ=";
  };

  cargoHash = "sha256-JR2rh8cqpVx/1Vbyhi+y9/9iGw0Y9C9QSjoUk7JNgOc=";

  meta = with lib; {
    description = "Move move source directories within a target to the target";
    homepage = "https://github.com/waynevanson/estrange";
    license = with licenses; [ agpl3Plus ];
    maintainers = with maintainers; [ waynevanson ];
  };
}
