return {
  "Exafunction/codeium.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("codeium").setup({
      enable_cmp_source = false, -- Desactiva la fuente de cmp si solo usas Virtual Text
      virtual_text = {
        enabled = true, -- Habilita Virtual Text
        manual = false, -- Muestra sugerencias automáticamente
        filetypes = {}, -- Configura filetypes específicos (ver más abajo)
        default_filetype_enabled = true, -- Habilita Virtual Text para todos los filetypes
        idle_delay = 75, -- Tiempo de espera antes de mostrar sugerencias (en ms)
        virtual_text_priority = 65535, -- Prioridad del Virtual Text
        map_keys = true, -- Habilita los keybindings predeterminados
        accept_fallback = nil, -- Tecla de aceptación predeterminada
        key_bindings = {
          accept = "<Tab>", -- Aceptar la sugerencia actual
          accept_word = false, -- Aceptar la siguiente palabra (desactivado)
          accept_line = false, -- Aceptar la siguiente línea (desactivado)
          clear = false, -- Limpiar el Virtual Text (desactivado)
          next = "<M-]>", -- Ciclar a la siguiente sugerencia
          prev = "<M-[>", -- Ciclar a la sugerencia anterior
        },
      },
    })
  end,
}
