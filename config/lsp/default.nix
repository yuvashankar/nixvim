{
  plugins = {
    lsp = {
      enable = true;
      inlayHints = true;
      servers = {
        # Nix
        nil_ls = {
          enable = true;
          settings.nix = {
            maxMemoryMB = 8192;
            flake = {
              autoArchive = true;
              autoEvalInputs = true;
            };
          };
        };
        # Lua
        lua_ls.enable = true;
        # Python
        pyright.enable = true;
      };
    };
  };
}
