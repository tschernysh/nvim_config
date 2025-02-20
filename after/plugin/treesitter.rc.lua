local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

require('nvim-ts-autotag').setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "lua",
    "json",
    "css"
  },
  autotag = {
    enable = true,
  },
}

vim.cmd('autocmd VimEnter * TSToggle highlight')


require "nvim-treesitter.parsers".get_parser_configs().solidity = {
  install_info = {
    url = "https://github.com/JoranHonig/tree-sitter-solidity",
    files = { "src/parser.c" },
    requires_generate_from_grammar = true,
  },
  filetype = 'solidity'
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
