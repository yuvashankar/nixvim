# Autocomplete
{
  plugins = {
    blink-cmp = {
      enable = true;
      settings = {
        signature.enabled = true;
        completion = {
          documentation = {
            auto_show = true;
            auto_show_delay_ms = 500;
          };
        };
      };
    };
  };
}
