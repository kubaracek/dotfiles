-- Code actions for telescope
return {
  "rachartier/tiny-code-action.nvim",
  event = "LspAttach",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim" },
  },
  config = function()
    local map = require("utils").glb_map

    map({ "n", "v" }, "<leader>ca", function()
      require("tiny-code-action").code_action()
    end, { desc = "Tiny code action" })

    require("tiny-code-action").setup()
  end,
}
