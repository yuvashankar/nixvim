{pkgs, ...}: {
  extraPackages = with pkgs; [
    ruff
  ];
  autoGroups.lint.clear = true;
  autoCmd = [
    {
      callback.__raw = ''
        function()
          require('lint').try_lint()
        end
      '';
      group = "lint";
      event = ["BufEnter" "BufWritePost" "InsertLeave"];
    }
  ];

  plugins = {
    lint = {
      enable = true;
      lintersByFt = {
        nix = ["nix"];
        python = ["ruff"];
        # json = ["jsonlint"];
      };
    };
  };
}
