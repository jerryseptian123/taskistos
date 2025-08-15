# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "nixos-unstable"; # or "unstabl
  # Use https://search.nixos.org/packages to find packages
  packages = [
	  pkgs.python
    pkgs.nodejs
  ];
  idx = {
    extensions = [ "ms-python.python" ];
    workspace = {};
	  previews = {
	    enable = false;
	  };
};
}
