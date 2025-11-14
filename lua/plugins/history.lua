return {
  'wilfreddenton/history.nvim',
  requires = { { 'nvim-lua/plenary.nvim' } },
  config = function ()
 	require('history').setup()
  end
}
