return {
  'MeanderingProgrammer/render-markdown.nvim',
  config = function()
    require("render-markdown").setup({
      link = {
        enabled = true,
        render_modes = false,
        footnote = {
          enabled = true, 
          superscript = true,
          prefix = '',
          suffix = '',
        },
        image = ' ',
        email = '󰇮 ',
        hyperlink = ' ',
        highlight = 'RenderMarkdownLink',
        wiki = {
          icon = '󱗖 ',
          body = function()
            return nil
          end,
          highlight = 'RenderMarkdownLink',
        },

        custom = {
          web = { pattern = 'http', icon = '󰖟 '},
          github = { pattern = 'github%.com', icon = ' '},
          gitlab = { pattern = 'gitlab%.com', icon = ' '},
          stackoverflow = { pattern = 'stackoverflow%.com', icon = ' '},
          wikipedia = { pattern = 'wikipedia%.com', icon = '󰖬 '},
          youtube = { pattern = 'youtube%.com', icon = ' '},
        },
      },
      callout = {
        note = { raw = '[!NOTE]', rendered = '󰎚 Note', highlight = 'RenderMarkdownInfo'},
        hint = { raw = '[!HINT]', rendered = ' Hint', highlight = 'RenderMarkdownSuccess'},
        important = { raw = '[!IMPORTANT]', rendered = ' Important', highlight = 'RenderMarkdownHint'},
        warning = { raw = '[!WARNING]', rendered = ' Warning', highlight = 'RenderMarkdownWarn'},
        caution = { raw = '[!CAUTION]', rendered = ' Caution', highlight = 'RenderMarkdownError'},
        abstract = { raw = '[!ABSTRACT]', rendered = '󱘘 Abstract', highlight = 'RenderMarkdownInfo'},
        summary = { raw = '[!SUMMARY]', rendered = '󰅍 ', highlight = 'RenderMarkdownInfo'},
        info = { raw = '[!INFO]', rendered = ' Info', highlight = 'RenderMarkdownInfo'},
        todo = { raw = '[!TODO]', rendered = ' Todo', highlight = 'RenderMarkdownInfo'},
        question = { raw = '[!QUESTION]', rendered = ' Question', highlight = 'RenderMarkdownWarn'},
        cite = { raw = '[!CITE]', rendered = '󱆨 Cite', highlight = 'RenderMarkdownQuote'},
        quote = { raw = '[!QUOTE]', rendered = '󱆧 Quote', highlight = 'RenderMarkdownQuote'},
      },
      checkbox = {
        enabled = true,
        render_modes = false,
        right_pad = 1,
        unchecked = {
          icon = ' ',
          highlight = 'RenderMarkdownUnchecked',
          scope_highlight = nil,
        },
        checked = {
          icon = ' ',
          highlight = 'RenderMarkdownUnchecked',
          scope_highlight = nil,
        },
        custom = {
          todo = { raw = '[-]', rendered = '󰥔 ', highlight='RenderMarkdownTodo', scope_highlight = nil },
        },
      },
      bullet = {
        enabled = true,
        render_modes = false, 
        icons = { '', '', '', ''},
        ordered_icons = function(ctx)
          local value = vim.trim(ctx.value)
          local index = tonumber(value:sub(1, #value - 1))
          return ('%d.'):format(index > 1 and index or ctx.index)
        end,
        left_pad = 0,
        right_pad = 0,
        highlight = 'RenderMarkdownBullet',
        scope_highlight = {},
      },
      quote = { icon = '󱆨 ' },
      anti_conceal = {
        enabled = true,
        ignore = {
          code_background = true,
          sign = true,
        },
        above = 0,
        below = 0,
      },
    })
  end
}
