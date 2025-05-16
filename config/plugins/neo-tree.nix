{
  keymaps = [
    {
      key = "\\";
      action = ":Neotree reveal<CR>";
      options = {
        desc = "Toggle directory";
        silent = true;
      };
    }
  ];
  plugins = {
    # UI Component library for nvim
    nui.enable = true;
    neo-tree = {
      enable = true;
      closeIfLastWindow = true;
    };
  };
}
