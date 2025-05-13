{pkgs, ...}: {
  # Import all your configuration modules here
  imports = [
    ./plugins
    ./lsp

    ./keymaps.nix
    ./options.nix
    ./commands.nix
  ];
  globals = {
    mapleader = " ";
    maplocalleader = " ";
    have_nerd_font = true;
  };
  extraPackages = with pkgs; [
    alejandra
    ripgrep
  ];
  plugins = {
    web-devicons.enable = true;
  };
}
