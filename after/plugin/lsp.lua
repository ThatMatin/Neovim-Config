local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()

local cmp = require('cmp')

cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  }
})
