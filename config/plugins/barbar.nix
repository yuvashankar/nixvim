# Tab Manager
let
  defautOpts = {
    silent = true;
    noremap = true;
  };
in {
  keymaps = [
    {
      key = "<A-,>";
      action = "<Cmd>BufferPrevious<CR>";
      options = {
        desc = "Move to previous buffer";
      };
    }
    {
      key = "<A-.>";
      action = "<Cmd>BufferNext<CR>";
      options = {
        desc = "Move to next buffer";
        silent = true;
        noremap = true;
      };
    }
    {
      key = "<A-<>";
      action = "<Cmd>BufferMovePrevious<CR>";
      options = {
        desc = "Reorder buffer to previous";
        silent = true;
        noremap = true;
      };
    }
    {
      key = "<A-<>";
      action = "<Cmd>BufferMoveNext<CR>";
      options = {
        desc = "Reorder buffer to previous";
        silent = true;
        noremap = true;
      };
    }
    {
      key = "<A-c>";
      action = "<Cmd>BufferClose<CR>";
      options = {
        desc = "Close current buffer";
        silent = true;
        noremap = true;
      };
    }
  ];

  plugins = {
    barbar = {
      enable = true;
    };
  };
}
