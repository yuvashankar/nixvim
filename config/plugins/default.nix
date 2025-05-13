{
  imports = [./neo-tree.nix ./conform.nix ./barbar.nix ./autopairs.nix ./todo-comments.nix];

  plugins = {
    sleuth.enable = true;
  };
}
