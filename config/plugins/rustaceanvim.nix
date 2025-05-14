{
  plugins = {
    rustaceanvim = {
      enable = true;
      settings = {
        auto_attach = true;
        server = {
          # cmd = [
          #   "rustup"
          #   "run"
          #   "stable"
          #   "rust-analyzer"
          # ];
          default_settings = {
            rust-analyzer = {
              check = {
                command = "clippy";
              };
              inlayHints = {
                lifetimeElisionHints = {
                  enable = "always";
                };
              };
            };
          };
          standalone = false;
        };
      };
    };
  };
}
