{pkgs, ...}: {
  # Import all your configuration modules here
  imports = [
    ./plugins
    ./lsp
    ./keymaps.nix
    ./options.nix
    ./commands.nix
  ];

  # Colour Scheme
  colorschemes.ayu = {
    enable = true;
    settings.mirage = true;
  };
  globals = {
    mapleader = " ";
    maplocalleader = " ";
    have_nerd_font = true;
  };
  extraPackages = with pkgs; [
    alejandra
    ripgrep
    nerd-fonts.zed-mono
    nixfmt-rfc-style
  ];

  clipboard = {
    # Sync clipboard between OS and Neovim
    # Remove this option if you want your OS clipboard to remain independent.
    register = "unnamedplus";
    providers = {
      wl-copy.enable = true; # Wayland
      xsel.enable = true; # X11
    };
  };

  plugins = {
    # Adds icons for plugins to utilize in ui
    web-devicons.enable = true;
    # Detect tabstop and shiftwidth automatically
    guess-indent.enable = true;
  };
  # The line beneath this is called `modeline`. See `:help modeline`
  # https://nix-community.github.io/nixvim/NeovimOptions/index.html?highlight=extraplugins#extraconfigluapost
  extraConfigLuaPost = ''
    -- vim: ts=2 sts=2 sw=2 et
  '';
}
