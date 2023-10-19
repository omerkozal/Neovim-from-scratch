local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
    ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "python", "c", "csv", "diff", "git_config", "git_rebase", "gitcommit", "make", "mermaid", "vim" }, -- put the language you want in this array
    -- ensure_installed = "all", -- one of "all" or a list of languages


  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  ignore_install = { "" }, -- List of parsers to ignore installing
  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    -- disable = function(lang, bufnr) -- Disable in large C++ buffers
    --     return lang == "c" and vim.api.nvim_buf_line_count(bufnr) > 500
    -- end,
    -- additional_vim_regex_highlighting = true,
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true, disable = { "yaml" } },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}
