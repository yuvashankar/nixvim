# Plugin to enable the rust toolchain
{
  plugins = {
    rustaceanvim = {
      enable = true;
      settings = {
        auto_attach = true;
        server = {
          default_settings = {
            rust-analyzer = {
              cargo = {
                allFeatures = true;
              };
              procMacro = {
                enable = true;
              };
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
