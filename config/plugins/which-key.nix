{
  plugins = {
    which-key = {
      enable = true;
      settings = {
        delay = 0;
        spec = [
          {
            __unkeyed-1 = "<Leader>s";
            group = "[Slearch";
          }
          {
            __unkeyed-1 = "<Leader>t";
            group = "[T]oggle";
          }
          {
            __unkeyed-1 = "<Leader>h";
            group = "Git [H]unk";
            mode = ["n" "v"];
          }
        ];
      };
    };
  };
}
