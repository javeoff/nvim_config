return {
  'james1236/backseat.nvim',
  enabled = false,
  config = function()
    require("backseat").setup({
      -- Alternatively, set the env var $OPENAI_API_KEY by putting "export OPENAI_API_KEY=sk-xxxxx" in your ~/.bashrc
      openai_model_id = 'gpt-4o', --gpt-4 (If you do not have access to a model, it says "The model does not exist")
      language = 'russian', -- Such as 'japanese', 'french', 'pirate', 'LOLCAT'
      split_threshold = 2000,
      additional_instruction = "Respond like professional typescript developer with 10+ years experience", -- (GPT-3 will probably deny this request, but GPT-4 complies)
      highlight = {
        icon = '!',
        group = 'Comment',
      }
    })
    require("which-key").register({
      ['ch'] = { ':Backseat<CR><CR>', 'Start backseat' },
      ['c-'] = { ':BackseatClearLine<CR><CR>', 'Hide line backseat' },
      ['c0'] = { ':BackseatClear<CR><CR>', 'Hide line backseat' },
    }, {
      silent = true,
      noremap = true,
      nowait = true,
    })
  end,
}
