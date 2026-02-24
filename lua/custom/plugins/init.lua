-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--

return {
  {
    'milanglacier/minuet-ai.nvim',
    config = function()
      require('minuet').setup {
        provider = 'codestral',
        virtualtext = {
          auto_trigger_ft = { 'typescript', 'svelte', 'lua', 'html', 'astro', 'python', 'go', 'cpp', 'c' },
          keymap = {
            accept = '<C-t>',
            -- accept_line = "<A-a>",
            -- Cycle to prev completion item, or manually invoke completion
            prev = '<A-[>',
            -- Cycle to next completion item, or manually invoke completion
            next = '<A-]>',
            dismiss = '<A-e>',
          },
        },
      }
    end,
  },
  { 'saghen/blink.cmp' },
}
