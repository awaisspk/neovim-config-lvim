-- general
lvim.format_on_save = true
lvim.colorscheme = "tokyonight"
lvim.transparent_window = false
vim.opt.wrap = false
lvim.debug = false
vim.cmd "set relativenumber"

-- keymappings
lvim.leader = "space"

lvim.keys.normal_mode["<esc><esc>"] = "<cmd>nohlsearch<cr>"
lvim.keys.normal_mode["Y"] = "y$"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<C-Up>"] = ""
lvim.keys.normal_mode["yae"] = "ggVGy"
lvim.keys.normal_mode["dae"] = "ggVGd"
lvim.keys.normal_mode["vae"] = "ggVG"
lvim.keys.normal_mode["n"] = "nzzzv"
lvim.keys.normal_mode["N"] = "Nzzzv"
lvim.keys.normal_mode["J"] = "mzJ`z"
lvim.keys.normal_mode["<ESC>"] = "<ESC>:noh<CR>"
lvim.keys.normal_mode["ZZ"] = ":BufferClose<CR>"
lvim.keys.normal_mode["<C-h>"] = "<C-w>h"
lvim.keys.normal_mode["<C-j>"] = "<C-w>j"
lvim.keys.normal_mode["<C-k>"] = "<C-w>k"
lvim.keys.normal_mode["<C-l>"] = "<C-w>l"
lvim.keys.normal_mode["<C-n>"] =
  "<cmd>lua vim.lsp.diagnostic.goto_next({popup_opts = {border = lvim.lsp.popup_border}})<cr>"
lvim.keys.normal_mode["<C-p>"] =
  "<cmd>lua vim.lsp.diagnostic.goto_prev({popup_opts = {border = lvim.lsp.popup_border}})<cr>"

lvim.keys.visual_mode["p"] = [["_dP]]

-- TODO convert them to lunarvim style
vim.api.nvim_set_keymap("x", "il", "g_o^", { noremap = true, silent = true })
vim.api.nvim_set_keymap("o", "il", ":normal vil<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-e>", "compe#close('<C-e>')", { noremap = true, silent = true, expr = true })
vim.api.nvim_set_keymap("n", "<c-c>", "<Plug>kommentary_line_default", {})
vim.api.nvim_set_keymap("v", "<c-c>", "<Plug>kommentary_visual_default<esc>", {})

vim.cmd [[
  map f <Plug>Sneak_f
  map F <Plug>Sneak_F
  map t <Plug>Sneak_t
  map T <Plug>Sneak_T
  nmap j <Plug>(accelerated_jk_gj)
  nmap k <Plug>(accelerated_jk_gk)
  let g:sneak#s_next = 1
  let g:sneak#label = 1
  let g:sneak#prompt = '=>>'
  autocmd ColorScheme * hi! link Sneak Normal
  autocmd ColorScheme * hi! SneakLabel guifg=blue guibg=bg
  au BufRead,BufNewFile *.graphql,*.graphqls,*.gql setfiletype graphql
]]

-- LSP
lvim.lsp.diagnostics.virtual_text = false
lvim.lsp.override = { "java" }
require("user.json_schemas").setup()

-- Builtins
lvim.builtin.dashboard.active = true
lvim.builtin.dashboard.custom_header = {
  "                                   ",
  "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣭⣿⣶⣿⣦⣼⣆         ",
  "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
  "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷⠄⠄⠄⠄⠻⠿⢿⣿⣧⣄     ",
  "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
  "          ⢠⣿⣿⣿⠈  ⠡⠌⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
  "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘⠄ ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
  "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
  " ⣠⣿⠿⠛⠄⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
  " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇⠄⠛⠻⢷⣄ ",
  "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
  "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
}
lvim.builtin.terminal.active = true
lvim.builtin.dap.active = true
lvim.builtin.bufferline.active = true
lvim.builtin.nvimtree.icons.folder.default = ""
lvim.builtin.nvimtree.icons.folder.open = ""
lvim.builtin.nvimtree.icons.folder.empty = ""
lvim.builtin.nvimtree.icons.folder.empty_open = ""
lvim.builtin.compe.preselect = "always"

lvim.builtin.galaxyline.colors = require("tokyonight.colors").setup()
lvim.builtin.galaxyline.colors.alt_bg = "#1f2335"

-- Whichkey
lvim.builtin.which_key.mappings.l.d = { "<cmd>TroubleToggle<cr>", "Diagnostics" }
lvim.builtin.which_key.mappings.l.R = { "<cmd>TroubleToggle lsp_references<cr>", "References" }
lvim.builtin.which_key.mappings.l.o = { "<cmd>SymbolsOutline<cr>", "Outline" }
lvim.builtin.which_key.mappings.T.h = { "<cmd>TSHighlightCapturesUnderCursor<cr>", "Highlight" }
lvim.builtin.which_key.mappings.T.p = { "<cmd>TSPlaygroundToggle<cr>", "Playground" }
lvim.builtin.which_key.mappings["z"] = { "<cmd>ZenMode<cr>", "Zen" }
lvim.builtin.which_key.mappings["r"] = {
  name = "Replace",
  r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
  w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
  f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
}
lvim.builtin.which_key.mappings.f = { "<cmd>lua require('lir.float').toggle()<cr>", "Files" }

lvim.builtin.nvimtree.auto_open = 0
-- vim.g.nvim_tree_disable_netrw = 0
-- vim.g.nvim_tree_hijack_netrw = 0

-- Treesitter
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.autotag.enable = true
lvim.builtin.treesitter.playground.enable = true

-- Telescope
lvim.builtin.telescope.on_config_done = function()
  local actions = require "telescope.actions"
  lvim.builtin.telescope.defaults.mappings.i["<C-j>"] = actions.move_selection_next
  lvim.builtin.telescope.defaults.mappings.i["<C-k>"] = actions.move_selection_previous
  lvim.builtin.telescope.defaults.mappings.i["<C-n>"] = actions.cycle_history_next
  lvim.builtin.telescope.defaults.mappings.i["<C-p>"] = actions.cycle_history_prev
end

-- Additional Plugins
lvim.plugins = {
  { "awaisspk/neoNight.nvim" },
  { "markonm/traces.vim", event = "BufRead" },
  { "wellle/targets.vim", event = "InsertEnter" },
  { "justinmk/vim-sneak", event = "BufRead" },
  { "tpope/vim-surround", event = "VimEnter" },
  { "rhysd/accelerated-jk" },
  { "visioncan/vscode-jss-snippets" },
  { "arnamak/nvim-nonicons" },
  { "jparise/vim-graphql" },
  {
    "dsznajder/vscode-es7-javascript-react-snippets",
    ft = {
      "javascript",
      "javascriptreact",
      "javascript.jsx",
    },
    event = "InsertEnter",
  },
  {
    "b3nj5m1n/kommentary",
    event = "VimEnter",
    config = function()
      require("kommentary.config").configure_language("javascriptreact", {
        single_line_comment_string = false,
        prefer_multi_line_comments = true,
        multi_line_comment_strings = { "{/*", "*/}" },
      })

      require("kommentary.config").configure_language("javascript", {
        single_line_comment_string = false,
        prefer_multi_line_comments = true,
        multi_line_comment_strings = { "{/*", "*/}" },
      })

      require("kommentary.config").configure_language("typescript", {
        single_line_comment_string = false,
        prefer_multi_line_comments = true,
        multi_line_comment_strings = { "{/*", "*/}" },
      })

      require("kommentary.config").configure_language("typescriptreact", {
        single_line_comment_string = false,
        prefer_multi_line_comments = true,
        multi_line_comment_strings = { "{/*", "*/}" },
      })
    end,
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "InsertEnter",
    config = function()
      require("user.lsp_signature").config()
    end,
  },
  {
    "kevinhwang91/rnvimr",
    config = function()
      require "user.rnvimr"
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    -- event = "BufReadPre",
    config = function()
      require "user.blankline"
    end,
  },
  {
    "ruifm/gitlinker.nvim",
    event = "BufRead",
    config = function()
      require("user.gitlinker").config()
    end,
  },
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("user.hop").config()
    end,
  },
  -- {
  -- "mattn/vim-gist",
  -- event = "BufRead",
  -- requires = "mattn/webapi-vim",
  --},
  {
    "andymass/vim-matchup",
    event = "CursorMoved",
    config = function()
      require "user.matchup"
    end,
  },
  {
    "nacro90/numb.nvim",
    event = "BufRead",
    config = function()
      require("user.numb").config()
    end,
  },
  {
    "monaqa/dial.nvim",
    event = "BufRead",
    config = function()
      require("user.dial").config()
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("user.colorizer").config()
    end,
  },
  {
    "nvim-telescope/telescope-project.nvim",
    event = "BufWinEnter",
    setup = function()
      vim.cmd [[packadd telescope.nvim]]
    end,
  },
  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      require("user.spectre").config()
    end,
  },
  {
    "vuki656/package-info.nvim",
    config = function()
      require "user.package-info"
    end,
    ft = "json",
  },
  {
    "rcarriga/nvim-notify",
    event = "BufRead",
    config = function()
      require("user.notify").config()
    end,
  },
  -- TODO: maybe oneday
  -- { "gelguy/wilder.nvim",
  --   config = function ()
  --     vim.cmd("source $HOME/.config/lvim/lua/user/wilder.vim")
  --   end
  -- },
  -- {
  --   "folke/twilight.nvim",
  --   config = function()
  --     require("user.twilight").config()
  --   end,
  --   -- cmd = "ZenMode",
  -- },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "kevinhwang91/nvim-bqf",
    event = "BufRead",
  },
  {
    "nvim-treesitter/playground",
    event = "BufRead",
  },
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    config = function()
      require("nvim-ts-autotag").setup {
        filetypes = { "html", "xml", "typescript", "typescriptreact", "javascriptreact" },
      }
    end,
  },
  {
    "sindrets/diffview.nvim",
    event = "BufRead",
  },
}
