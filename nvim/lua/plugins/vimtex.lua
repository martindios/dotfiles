return {
  "lervag/vimtex",
  config = function()
    -- Compilación automática al abrir o crear archivos .tex
    vim.cmd [[
      autocmd BufNewFile,BufRead *.tex VimtexCompile
    ]]
    -- Configuración de Vimtex
    vim.g.vimtex_compiler_latexmk = {
      build_dir = '.out',
      options = {
        '-shell-escape',
        '-verbose',
        '-file-line-error',
        '-interaction=nonstopmode',
        '-synctex=1'
      }
    }
    vim.g.vimtex_view_method = 'zathura'
    vim.g.vimtex_fold_enabled = true
  end
}

