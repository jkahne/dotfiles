require'hop'.setup()
local async = require "plenary.async"
require'nvim-web-devicons'.setup()


-- must come before lspconfig
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "tailwindcss", "graphql",  "tsserver", "html", "dockerls", "cssls", "astro"  }
    -- ensure_installed = { "tailwindcss", "graphql", "ruby_ls", "tsserver", "html", "elixirls", "dockerls", "cssls", "astro",   }
})


-- Diagnostic settings
vim.diagnostic.config {
  virtual_text = true,
  -- signs = true,
  -- underline = true,
  signs = false,
  underline = false,
}


local cmp = require'cmp'
cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
      vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-j>'] = cmp.mapping.select_next_item(),
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp',
      -- entry_filter = function(entry, ctx)
      --   -- LOG.debug(entry:get_kind())
      --   -- if entry:get_kind() == 15 then
      --   --   return false
      --   -- end
      --   return true
      -- end
    },
    -- { name = 'vsnip' }, -- For vsnip users.
    -- { name = 'luasnip' }, -- For luasnip users.
    { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
  }, {
    { name = 'buffer' },
  })
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
  }, {
    { name = 'buffer' },
  })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- require("elixir").setup({
--   nextls = {enable = false},
--   credo = {enable = true},
--   elixirls = {
--     enable = true,
--     filetypes = { "elixir", "heex", "eex", "surface" },
--     dialyzerEnabled = false,
--   },
--   fetchDeps = false
-- })

-- https://github.com/elixir-tools/elixir-tools.nvim
local elixirls = require("elixir.elixirls")
require("elixir").setup({
  nextls = {enable = true},
  credo = {enable = true},
  elixirls = {
    enable = true,
    filetypes = { "elixir", "heex", "eex", "surface" },
    settings = elixirls.settings {
      dialyzerEnabled = true,
      fetchDeps = false,
      enableTestLenses = false,
      suggestSpecs = false,
    },
  },
})


local nvim_lsp = require'lspconfig'


-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- ✅ gem install bundler
-- ✅ gem install solargraph
-- ✅ gem install solargraph-rails
-- cmdprompt> solargraph config
-- add '- solargraph-rails' to plugins
nvim_lsp.solargraph.setup{
  capabilities = capabilities }
-- ✅ npm install -g typescript typescript-language-server
nvim_lsp.tsserver.setup{ capabilities = capabilities }
-- ✅ npm install -g @astrojs/language-server
-- nvim_lsp.astro.setup{ capabilities = capabilities, }
nvim_lsp.astro.setup{  }
-- help lspconfig-all
-- ✅ https://github.com/elixir-lsp/elixir-ls/releases/latest/download/elixir-ls.zip
-- put in /Users/jkahne/bin/elixir-ls
-- nvim_lsp.elixirls.setup{
--   capabilities = capabilities,
--   -- cmd = { "/Users/jkahne/bin/elixir-ls/language_server.sh" },
--   filetypes = { "elixir", "heex", "eex", "surface" },
--   dialyzerEnabled = false,
--   fetchDeps = false
-- }
-- nvim_lsp.elixirls.setup{  }
-- nvim_lsp.tailwindcss.setup({
  -- capabilities = capabilities,
  -- filetypes = { "html", "elixir", "eelixir", "heex", "erb", "js", "jsx"  },
  -- init_options = {
  --   userLanguages = {
  --     elixir = "html-eex",
  --     eelixir = "html-eex",
  --     heex = "html-eex",
  --   },
  -- },
  -- settings = {
  --   tailwindCSS = {
  --     experimental = {
  --       classRegex = {
  --         '(?:class|classNames)[:=]\\s*"([^"]*)"',
  --       },
  --     },
  --   },
  -- },
-- })
      -- 'class[:]\\s*"([^"]*)"',

-- https://github.com/SmithWebDev/Highlander/blob/nvim-0.10/nvim-0.10/default/lua/smithwebdev/plugins/lsp/lspconfig.lua#L171
nvim_lsp.tailwindcss.setup {
  -- cmd = { "/Users/nick/.config/nvim/language-servers/node_modules/.bin/tailwindcss-language-server", "--stdio" }
      capabilities = capabilities,
      -- on_attach = on_attach,
      -- on_attach = function(bufnr),
      settings = {
        tailwindCSS = {
          classAttributes = { "class", "className", "class:list", "classList", "ngClass", "class: " },
          emmetCompletions = true,
          lint = {
            cssConflict = "warning",
            invalidApply = "error",
            invalidConfigPath = "error",
            invalidScreen = "error",
            invalidTailwindDirective = "error",
            invalidVariant = "error",
            recommendedVariantOrder = "warning"
          },
          validate = true
        }
      },
      userLanguages = {
        eelixir = "html-eex",
        eruby = "erb",
        ruby = "rb",
        html = 'html',
        css = 'css'
      }
}


require'nvim-treesitter.configs'.setup{
--   -- A list of parser names, or "all"
  ensure_installed = {"css", "dockerfile", "graphql", "html", "elixir", "heex", "eex",  "javascript", "json", "json5", "lua", "markdown", "sql", "tsx", "typescript", "vim", "ruby", "embedded_template", "bash", "astro", "c", "help"  },
--   -- ensure_installed = { "astro" },

--   -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

--   -- Automatically install missing parsers when entering buffer
--   -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
--   auto_install = true,

--   -- List of parsers to ignore installing (for "all")
--   -- ignore_install = { "javascript" },

--   ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
--   -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
--     -- `false` will disable the whole extension
    enable = true,
    -- disable = { "embedded_template" }, -- may fix the ruby <% issue

--     -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
--     -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
--     -- the name of the parser)
--     -- list of language that will be disabled
--     disable = { "c", "rust" },
--     -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
--     disable = function(lang, buf)
--         local max_filesize = 100 * 1024 -- 100 KB
--         local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
--         if ok and stats and stats.size > max_filesize then
--             return true
--         end
--     end,

--     -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
--     -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
--     -- Using this option may slow down your editor, and you may see some duplicate highlights.
--     -- Instead of true it can also be a list of languages
--     additional_vim_regex_highlighting = false,
  },
}


    -- path_display = {"tail"},
    -- path_display = {
    --   shorten = { len = 2, exclude = {-1} }
    -- },

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = "move_selection_next",
        ["<C-k>"] = "move_selection_previous",
      }
    },
    layout_strategy = "vertical",
    anchor = "N",
    path_display = {"truncate"},
    layout_config = {
      center = {
        preview_height = 0.7,
      },
      vertical = {
        prompt_position = "top",
        preview_height = 0.7,
        mirror = true,
        preview_cutoff = 4,
        width = 0.99,
        height = 0.99,
      },
      horizontal = {
        prompt_position = "top",
        preview_width = 0.7,
        width = 0.99,
        height = 0.99,
      },
    },
    sorting_strategy = "ascending",
    -- preview = true,
  },
  -- pickers = {
  --   -- git_files = { theme = 'dropdown' },
  --   -- find_files = { theme = 'dropdown'  },
  --   -- buffers = { layout_strategy='horizontal', layout_config={ horizontal = {height = 0.55, results_height = 0.55} }  },
  --   -- marks = { theme = 'ivy' },
  --   -- git_branches = { theme = 'ivy' },
  --   -- git_bcommits = { theme = 'ivy' },
  --   -- git_commits = { theme = 'ivy' },
  --   -- grep_string = { theme = 'ivy' },
  --   -- live_grep = { theme = 'ivy' },
  -- },
  extensions = {
      http = {
          -- How the mozilla url is opened. By default:
          open_url = 'open %s'
      },
  }
}

require("telescope").load_extension "neoclip"
require('neoclip').setup{
  history = 1000,
  enable_persistent_history = false,
  length_limit = 1048576,
  continuous_sync = true,
  preview = true,
  -- prompt = nil,
  -- default_register = '"',
  -- default_register_macros = 'q',
  -- enable_macro_history = true,
  -- content_spec_column = false,
  -- on_paste = {
  --   set_reg = false,
  -- },
  -- on_replay = {
  --   set_reg = false,
  -- },
  keys = {
    telescope = {
      i = {
  --       select = '<cr>',
        paste = '<cr>',
        paste_behind = '<c-p>',
  --       replay = '<c-q>',  -- replay a macro
  --       delete = '<c-d>',  -- delete an entry
  --       custom = {},
      },
      n = {
  --       select = '<cr>',
        paste = '<cr>',
  --       --- It is possible to map to more than one key.
  --       -- paste = { 'p', '<c-p>' },
        paste_behind = 'P',
  --       replay = 'q',
  --       delete = 'd',
  --       custom = {},
      },
    },
  --   fzf = {
  --     select = 'default',
  --     paste = 'ctrl-p',
  --     paste_behind = 'ctrl-k',
  --     custom = {},
  --   },
  },
}


require('telescope').load_extension('tailiscope')
require('telescope').load_extension 'http'

require("harpoon").setup({
  -- global_settings = {
  --     -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
  --     save_on_toggle = false,

  --     -- saves the harpoon file upon every change. disabling is unrecommended.
  --     save_on_change = true,

  --     -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
  --     enter_on_sendcmd = false,

  --     -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
  --     tmux_autoclose_windows = false,

  --     -- filetypes that you want to prevent from adding to the harpoon list menu.
  --     excluded_filetypes = { "harpoon" },

  --     -- set marks specific to each git branch inside git repository
  --     mark_branch = false,
  -- }
})

require('aerial').setup({
  -- optionally use on_attach to set keymaps when aerial has attached to a buffer
  on_attach = function(bufnr)
    -- Jump forwards/backwards with '{' and '}'
    vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', {buffer = bufnr})
    vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', {buffer = bufnr})
  end
})
-- You probably also want to set a keymap to toggle aerial
vim.keymap.set('n', '<leader>aa', '<cmd>AerialToggle!<CR>')


-- :lua require('elixir-extras').elixir_view_docs({})
-- :lua require('elixir-extras').elixir_view_docs({include_mix_libs=true})
-- :lua require'elixir-extras'.setup_multiple_clause_gutter()
require("gp").setup({
  openai_api_key = { "op", "item", "get", "2ixclc4yqfj3im2s76ny53w234", "--fields", "password" },

 	-- default command agents (model + persona)
 	-- name, model and system_prompt are mandatory fields
 	-- to use agent for chat set chat = true, for command set command = true
 	-- to remove some default agent completely set it just with the name like:
 	-- agents = {  { name = "ChatGPT4" }, ... },
 	agents = {
 		{
 			name = "ChatGPT4",
 			chat = true,
 			command = false,
 			-- string with model name or table with model name and parameters
 			model = { model = "gpt-4-1106-preview", temperature = 1.1, top_p = 1 },
 			-- system prompt (use this to specify the persona/role of the AI)
 			system_prompt = "You are a general AI assistant.\n\n"
 				.. "The user provided the additional info about how they would like you to respond:\n\n"
 				.. "- If you're unsure don't guess and say you don't know instead.\n"
 				.. "- Ask question if you need clarification to provide better answer.\n"
 				.. "- Think deeply and carefully from first principles step by step.\n"
 				.. "- Zoom out first to see the big picture and then zoom in to details.\n"
 				.. "- Use Socratic method to improve your thinking and coding skills.\n"
 				.. "- Don't elide any code from your output if the answer requires coding.\n"
 				.. "- Take a deep breath; You've got this!\n",
 		},
 		{
 			name = "CodeGPT4",
 			chat = false,
 			command = true,
 			-- string with model name or table with model name and parameters
 			model = { model = "gpt-4-1106-preview", temperature = 0.8, top_p = 1 },
 			-- system prompt (use this to specify the persona/role of the AI)
 			system_prompt = "You are an AI working as a code editor.\n\n"
 				.. "Please AVOID COMMENTARY OUTSIDE OF THE SNIPPET RESPONSE.\n"
 				.. "START AND END YOUR ANSWER WITH:\n\n```",
 		},
 	},

 	-- chat topic model (string with model name or table with model name and parameters)
 	-- chat_topic_gen_model = "gpt-3.5-turbo-16k",
})
