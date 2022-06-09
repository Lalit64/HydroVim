vim.cmd[[
  nnoremap <silent> <C-j> <Cmd>Lspsaga diagnostic_jump_next<CR>
  nnoremap <silent>K <Cmd>Lspsaga hover_doc<CR>
  "nnoremap <silent> K <Cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
  inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>
  nnoremap <silent> gh <Cmd>Lspsaga lsp_finder<CR>
  nnoremap <silent> gp <Cmd>Lspsaga preview_definition<CR>
  nnoremap <silent> gr <Cmd>Lspsaga rename<CR>
]]
