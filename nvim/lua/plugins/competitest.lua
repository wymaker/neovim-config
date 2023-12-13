return {
  {
    "xeluxee/competitest.nvim",
    dependencies = "MunifTanjim/nui.nvim",
    config = function()
      require("competitest").setup({
        testcases_directory = "./testcases",
        testcases_single_file_format = "$(FNOEXT).testcases",
        testcases_input_file_format = "$(FNOEXT)_inp$(TCNUM).txt",
        testcases_output_file_format = "$(FNOEXT)_out$(TCNUM).txt",
        runner_ui = {
          interface = "split",
        },
      })
    end,
  },
}
