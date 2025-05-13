{
  keymaps = [
    {
      key = "\\";
      action = ":Neotree reveal<CR>";
      options = {
        desc = "NeoTree reveal";
        silent = true;
      };
    }
  ];
  plugins = {
    neo-tree = {
      enable = true;
      closeIfLastWindow = true;
    };
  };
}
