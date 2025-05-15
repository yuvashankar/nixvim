{pkgs, ...}: {
  extraPackages = with pkgs; [
    clippy
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
        rust = [
          "clippy"
        ];
        python = ["ruff"];
        # json = ["jsonlint"];
      };
    };
  };
}
