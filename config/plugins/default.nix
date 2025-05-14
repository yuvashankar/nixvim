{
  imports = [./neo-tree.nix ./conform.nix ./barbar.nix ./autopairs.nix ./todo-comments.nix ./rustaceanvim.nix];

  plugins = {
    sleuth.enable = true;
  };
}
