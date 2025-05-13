{pkgs, ...}: {
  # Import all your configuration modules here
  imports = [
    ./barbar.nix
    ./keymaps.nix
    ./plugins
    ./lsp
  ];
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };
  extraPackages = with pkgs; [
    alejandra
    ripgrep
  ];
  plugins = {
    web-devicons.enable = true;
  };
}
