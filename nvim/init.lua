-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- enable syntax highlighting for handlebars files
vim.cmd("autocmd BufRead,BufNewFile *.hbs set filetype=html")
