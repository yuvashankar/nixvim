{
  # https://nix-community.github.io/nixvim/NeovimOptions/autoGroups/index.html
  autoGroups = {
    "kickstart-lsp-attach" = {
      clear = true;
    };
  };

  plugins = {
    # Useful status updates for LSP.
    fidget.enable = true;
    tiny-inline-diagnostic = {
      enable = true;
      settings = {
        multilines.enabled = true;
        breaklines.enabled = true;
      };
    };
    lsp = {
      enable = true;
      # Display inlay hints by default
      inlayHints = true;

      keymaps = {
        lspBuf = {
          # Rename the variable under your cursor.
          #  Most Language Servers support renaming across files, etc.
          "<leader>rn" = {
            action = "rename";
            desc = "LSP: [R]e[n]ame";
          };
          # Execute a code action, usually your cursor needs to be on top of an error
          # or a suggestion from your LSP for this to activate.
          "<leader>ca" = {
            mode = ["n" "x"];
            action = "code_action";
            desc = "LSP: [C]ode [A]ction";
          };
          # WARN: This is not Goto Definition, this is Goto Declaration.
          #  For example, in C this would take you to the header.
          "gD" = {
            action = "declaration";
            desc = "LSP: [G]oto [D]eclaration";
          };
        };

        extra = [
          # Jump to the definition of the word under your cusor.
          #  This is where a variable was first declared, or where a function is defined, etc.
          #  To jump back, press <C-t>.
          {
            mode = "n";
            key = "gd";
            action.__raw = "require('telescope.builtin').lsp_definitions";
            options = {
              desc = "LSP: [G]oto [D]efinition";
            };
          }
          # Find references for the word under your cursor.
          {
            mode = "n";
            key = "gr";
            action.__raw = "require('telescope.builtin').lsp_references";
            options = {
              desc = "LSP: [G]oto [R]eferences";
            };
          }
          # Jump to the implementation of the word under your cursor.
          #  Useful when your language has ways of declaring types without an actual implementation.
          {
            mode = "n";
            key = "gI";
            action.__raw = "require('telescope.builtin').lsp_implementations";
            options = {
              desc = "LSP: [G]oto [I]mplementation";
            };
          }
          # Jump to the type of the word under your cursor.
          #  Useful when you're not sure what type a variable is and you want to see
          #  the definition of its *type*, not where it was *defined*.
          {
            mode = "n";
            key = "<leader>D";
            action.__raw = "require('telescope.builtin').lsp_type_definitions";
            options = {
              desc = "LSP: Type [D]efinition";
            };
          }
          # Fuzzy find all the symbols in your current document.
          #  Symbols are things like variables, functions, types, etc.
          {
            mode = "n";
            key = "<leader>ds";
            action.__raw = "require('telescope.builtin').lsp_document_symbols";
            options = {
              desc = "LSP: [D]ocument [S]ymbols";
            };
          }
          # Fuzzy find all the symbols in your current workspace.
          #  Similar to document symbols, except searches over your entire project.
          {
            mode = "n";
            key = "<leader>ws";
            action.__raw = "require('telescope.builtin').lsp_dynamic_workspace_symbols";
            options = {
              desc = "LSP: [W]orkspace [S]ymbols";
            };
          }
        ];
      };

      servers = {
        # Nix
        nixd = {
          enable = true;
          settings = {
            nixpkgs = {
              expr = "import <nixpkgs> { }";
            };
            formatting.command = ["alejandra"];
            options = {
              # nixos = {
              #   expr = "${flakeRoot}.nixosConfigurations.yuvashankar-desktop.options";
              # };
              #   home_manager = {
              #     expr = ''
              #       (builtins.getFlake "${flakeRoot}").nixosConfigurations.${config.hostSpec.hostName}.options.home-manager.users.value.${config.hostSpec.username}
              #     '';
              #   };
            };
          };
        };

        # Lua
        lua_ls = {
          enable = true;
          settings = {
            competion = {callSnippet = "Replace";};
          };
        };

        # Python
        pyright.enable = true;
      };
    };
  };
}
