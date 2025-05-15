{
  plugins = {
    which-key = {
      enable = true;
      settings = {
        delay = 0;
        spec = [
          {
            __unkeyed-1 = "<leader>s";
            group = "[Slearch";
          }
          {
            __unkeyed-2 = "<leader>t";
            group = "[T]oggle";
          }
          {
            __unkeyed-3 = "<leader>h";
            group = "Git [H]unk";
            mode = ["n" "v"];
          }
        ];
      };
    };
  };
}
