set background=dark
if exists('g:colors_name')
hi clear
if exists('syntax_on')
syntax reset
endif
endif
let g:colors_name = 'lushwal'
highlight Normal guifg=#F7EAE4 guibg=#1D1924 guisp=NONE blend=NONE gui=NONE
highlight! link User Normal
highlight Bold guifg=#F7EAE4 guibg=#1D1924 guisp=NONE blend=NONE gui=bold
highlight Boolean guifg=#2534D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Character guifg=#1C2AA6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight ColorColumn guifg=#C9B6AB guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Comment guifg=#F7EAE4 guibg=NONE guisp=NONE blend=NONE gui=italic
highlight Conceal guifg=#ADA49F guibg=#1D1924 guisp=NONE blend=NONE gui=NONE
highlight! link Whitespace Conceal
highlight Conditional guifg=#F0A8E4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Constant guifg=#2534D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Cursor guifg=#1D1924 guibg=#F7EAE4 guisp=NONE blend=NONE gui=NONE
highlight CursorColumn guifg=#C9B6AB guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight CursorLine guifg=#ADA49F guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight CursorLineNr guifg=#F7EAE4 guibg=#1D1924 guisp=NONE blend=NONE gui=NONE
highlight Debug guifg=#1C2AA6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Define guifg=#F0A8E4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Delimiter guifg=#2225B9 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticError guifg=#1C2AA6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticHint guifg=#F7D5D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticInfo guifg=#6A5FE3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticUnderlineError guifg=#1C2AA6 guibg=NONE guisp=#1C2AA6 blend=NONE gui=underline
highlight DiagnosticUnderlineHint guifg=#F7D5D4 guibg=NONE guisp=#F7D5D4 blend=NONE gui=underline
highlight DiagnosticUnderlineInfo guifg=#6A5FE3 guibg=NONE guisp=#6A5FE3 blend=NONE gui=underline
highlight DiagnosticUnderlineWarn guifg=#535CDF guibg=NONE guisp=#535CDF blend=NONE gui=underline
highlight DiagnosticWarn guifg=#535CDF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiffAdd guifg=#2537D4 guibg=#ADA49F guisp=NONE blend=NONE gui=bold
highlight! link DiffAdded DiffAdd
highlight DiffChange guifg=#E4CFC4 guibg=#ADA49F guisp=NONE blend=NONE gui=NONE
highlight DiffDelete guifg=#1C2AA6 guibg=#ADA49F guisp=NONE blend=NONE gui=bold
highlight! link DiffRemoved DiffDelete
highlight! link diffRemoved DiffDelete
highlight DiffFile guifg=#1C2AA6 guibg=#1D1924 guisp=NONE blend=NONE gui=NONE
highlight DiffLine guifg=#6A5FE3 guibg=#1D1924 guisp=NONE blend=NONE gui=NONE
highlight DiffNewFile guifg=#2537D4 guibg=#1D1924 guisp=NONE blend=NONE gui=NONE
highlight DiffText guifg=#6A5FE3 guibg=#ADA49F guisp=NONE blend=NONE gui=NONE
highlight Directory guifg=#6A5FE3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight EndOfBuffer guifg=#F7EAE4 guibg=#1D1924 guisp=NONE blend=NONE gui=NONE
highlight Error guifg=#1C2AA6 guibg=#F7EAE4 guisp=NONE blend=NONE gui=NONE
highlight ErrorMsg guifg=#1C2AA6 guibg=#1D1924 guisp=NONE blend=NONE gui=NONE
highlight Exception guifg=#1C2AA6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Float guifg=#2534D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight FoldColumn guifg=#6A5FE3 guibg=#1D1924 guisp=NONE blend=NONE gui=NONE
highlight Folded guifg=#F7EAE4 guibg=#ADA49F guisp=NONE blend=NONE gui=italic
highlight Function guifg=#6A5FE3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Identifier guifg=#F7D5D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight IncSearch guifg=#ADA49F guibg=#2534D4 guisp=NONE blend=NONE gui=NONE
highlight Include guifg=#6A5FE3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Italic guifg=#F7EAE4 guibg=#1D1924 guisp=NONE blend=NONE gui=italic
highlight Keyword guifg=#F0A8E4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Label guifg=#535CDF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight LineNr guifg=#E4CFC4 guibg=#1D1924 guisp=NONE blend=NONE gui=NONE
highlight Macro guifg=#1C2AA6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MatchParen guifg=#F7EAE4 guibg=#E4CFC4 guisp=NONE blend=NONE gui=NONE
highlight MiniCompletionActiveParameter guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniCursorword guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=underline
highlight! link MiniCursorwordCurrent MiniCursorword
highlight MiniIndentscopePrefix guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=nocombine
highlight MiniIndentscopeSymbol guifg=#ADA49F guibg=#1D1924 guisp=NONE blend=NONE gui=NONE
highlight MiniJump guifg=#6A5FE3 guibg=NONE guisp=#E4CFC4 blend=NONE gui=underline
highlight MiniJump2dSpot guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=undercurl
highlight MiniStarterCurrent guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStarterFooter guifg=#6A5FE3 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniStarterHeader guifg=#6A5FE3 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniStarterInactive guifg=#F7EAE4 guibg=NONE guisp=NONE blend=NONE gui=italic
highlight MiniStarterItem guifg=#F7EAE4 guibg=#1D1924 guisp=NONE blend=NONE gui=NONE
highlight MiniStarterItemBullet guifg=#2225B9 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStarterItemPrefix guifg=#1C2AA6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStarterQuery guifg=#2537D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStarterSection guifg=#2225B9 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineDevinfo guifg=#F7EAE4 guibg=#ADA49F guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineFileinfo guifg=#F7EAE4 guibg=#ADA49F guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineFilename guifg=#535CDF guibg=#ADA49F guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineInactive guifg=#C9B6AB guibg=#ADA49F guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeCommand guifg=#1D1924 guibg=#F7D5D4 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeInsert guifg=#1D1924 guibg=#6A5FE3 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeNormal guifg=#1D1924 guibg=#2537D4 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeOther guifg=#1D1924 guibg=#F0A8E4 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeReplace guifg=#1D1924 guibg=#1C2AA6 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeVisual guifg=#1D1924 guibg=#2534D4 guisp=NONE blend=NONE gui=NONE
highlight MiniSurround guifg=#ADA49F guibg=#2534D4 guisp=NONE blend=NONE gui=NONE
highlight MiniTablineCurrent guifg=#E4CFC4 guibg=#ADA49F guisp=NONE blend=NONE gui=NONE
highlight MiniTablineFill guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniTablineHidden guifg=#2537D4 guibg=#ADA49F guisp=NONE blend=NONE gui=NONE
highlight MiniTablineModifiedCurrent guifg=#F7EAE4 guibg=#ADA49F guisp=NONE blend=NONE gui=NONE
highlight MiniTablineModifiedHidden guifg=#C9B6AB guibg=#ADA49F guisp=NONE blend=NONE gui=NONE
highlight MiniTablineModifiedVisible guifg=#F7EAE4 guibg=#ADA49F guisp=NONE blend=NONE gui=NONE
highlight MiniTablineVisible guifg=#E4CFC4 guibg=#ADA49F guisp=NONE blend=NONE gui=NONE
highlight MiniTestEmphasis guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniTestFail guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniTestPass guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniTrailspace guifg=#1C2AA6 guibg=#F7EAE4 guisp=NONE blend=NONE gui=NONE
highlight ModeMsg guifg=#2537D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MoreMsg guifg=#2537D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight NonText guifg=#E4CFC4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Number guifg=#2534D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Operator guifg=#F7EAE4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight PMenu guifg=#F7EAE4 guibg=#ADA49F guisp=NONE blend=NONE gui=NONE
highlight PMenuSel guifg=#F7EAE4 guibg=#6A5FE3 guisp=NONE blend=NONE gui=NONE
highlight PmenuSbar guifg=#C9B6AB guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight PmenuThumb guifg=#F7EAE4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight PreProc guifg=#535CDF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Question guifg=#6A5FE3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Repeat guifg=#535CDF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Search guifg=#E4CFC4 guibg=#535CDF guisp=NONE blend=NONE gui=NONE
highlight! link MiniTablineTabpagesection Search
highlight SignColumn guifg=#C9B6AB guibg=#1D1924 guisp=NONE blend=NONE gui=NONE
highlight Special guifg=#F7D5D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight SpecialChar guifg=#2225B9 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight SpecialKey guifg=#E4CFC4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight SpellBad guifg=#1C2AA6 guibg=NONE guisp=#1C2AA6 blend=NONE gui=underline
highlight SpellCap guifg=#535CDF guibg=NONE guisp=#535CDF blend=NONE gui=underline
highlight SpellLocal guifg=#F7D5D4 guibg=NONE guisp=#F7D5D4 blend=NONE gui=underline
highlight SpellRare guifg=#F0A8E4 guibg=NONE guisp=#F0A8E4 blend=NONE gui=underline
highlight Statement guifg=#1C2AA6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight StatusLine guifg=#F7EAE4 guibg=#ADA49F guisp=NONE blend=NONE gui=NONE
highlight StatusLineNC guifg=#C9B6AB guibg=#ADA49F guisp=NONE blend=NONE gui=NONE
highlight StatusLineTerm guifg=#2537D4 guibg=#2537D4 guisp=NONE blend=NONE gui=NONE
highlight StatusLineTermNC guifg=#535CDF guibg=#ADA49F guisp=NONE blend=NONE gui=NONE
highlight StorageClass guifg=#535CDF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight String guifg=#2537D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Structure guifg=#F0A8E4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight TabLine guifg=#E4CFC4 guibg=#ADA49F guisp=NONE blend=NONE gui=NONE
highlight TabLineFill guifg=#E4CFC4 guibg=#ADA49F guisp=NONE blend=NONE gui=NONE
highlight TabLineSel guifg=#2537D4 guibg=#ADA49F guisp=NONE blend=NONE gui=NONE
highlight Tag guifg=#535CDF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Title guifg=#6A5FE3 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight Todo guifg=#535CDF guibg=#ADA49F guisp=NONE blend=NONE gui=NONE
highlight TooLong guifg=#1C2AA6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Type guifg=#535CDF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Typedef guifg=#535CDF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Underlined guifg=#1C2AA6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight VertSplit guifg=#F7EAE4 guibg=#1D1924 guisp=NONE blend=NONE gui=NONE
highlight! link WinSeparator VertSplit
highlight Visual guifg=#1D1924 guibg=#C9B6AB guisp=NONE blend=NONE gui=NONE
highlight VisualNOS guifg=#1C2AA6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight WarningMsg guifg=#1C2AA6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight WildMenu guifg=#F7EAE4 guibg=#6A5FE3 guisp=NONE blend=NONE gui=NONE
highlight WinBar guifg=#F7EAE4 guibg=#1D1924 guisp=NONE blend=NONE gui=NONE
highlight WinBarNC guifg=#C9B6AB guibg=#1D1924 guisp=NONE blend=NONE gui=NONE
highlight gitCommitOverflow guifg=#1C2AA6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight gitCommitSummary guifg=#2537D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight helpCommand guifg=#535CDF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight helpExample guifg=#535CDF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @attribute guifg=#6A5FE3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @boolean guifg=#6A5FE3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @character guifg=#535CDF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @character.special guifg=#2225B9 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @comment guifg=#F7EAE4 guibg=NONE guisp=NONE blend=NONE gui=italic
highlight @conditional guifg=#1C2AA6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @constant guifg=#1C2AA6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @constant.builtin guifg=#1C2AA6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @constant.macro guifg=#1C2AA6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @constructor guifg=#F7EAE4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @debug guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @define guifg=#F0A8E4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @exception guifg=#1C2AA6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @field guifg=#2537D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @float guifg=#6A5FE3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @function guifg=#6A5FE3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @function.builtin guifg=#1C2AA6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @function.macro guifg=#1C2AA6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @include guifg=#F7D5D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @keyword guifg=#F0A8E4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @keyword.function guifg=#F7D5D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @keyword.operator guifg=#F0A8E4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @label guifg=#F7D5D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @method guifg=#6A5FE3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @namespace guifg=#6A5FE3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @none guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @number guifg=#6A5FE3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @operator guifg=#F7EAE4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @parameter guifg=#535CDF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @preproc guifg=#535CDF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @property guifg=#535CDF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @punctuation.bracket guifg=#F7EAE4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @punctuation.delimiter guifg=#F7EAE4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @punctuation.special guifg=#F7D5D4 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight @repeat guifg=#1C2AA6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @storageclass guifg=#535CDF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @string guifg=#6A5FE3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @string.escape guifg=#2537D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @string.regex guifg=#2537D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @string.special guifg=#2225B9 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @symbol guifg=#F7D5D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @tag guifg=#535CDF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @tag.attribute guifg=#F7D5D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @tag.delimiter guifg=#F7D5D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text guifg=#2537D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.bold guifg=#535CDF guibg=NONE guisp=NONE blend=NONE gui=bold
highlight @text.danger guifg=#1C2AA6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.diff.add guifg=#2537D4 guibg=#ADA49F guisp=NONE blend=NONE gui=bold
highlight @text.diff.delete guifg=#1C2AA6 guibg=#ADA49F guisp=NONE blend=NONE gui=bold
highlight @text.emphasis guifg=#F0A8E4 guibg=NONE guisp=NONE blend=NONE gui=italic
highlight @text.environment guifg=#1C2AA6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.environment.name guifg=#535CDF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.literal guifg=#2537D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.math guifg=#F7D5D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.note guifg=#F7D5D4 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.reference guifg=#1C2AA6 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.strike guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=strikethrough
highlight @text.title guifg=#6A5FE3 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight @text.todo guifg=#535CDF guibg=#ADA49F guisp=NONE blend=NONE gui=NONE
highlight @text.underline guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=underline
highlight @text.uri guifg=NONE guibg=#ADA49F guisp=NONE blend=NONE gui=underline
highlight @type guifg=#6A5FE3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @type.builtin guifg=#6A5FE3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @type.definition guifg=#535CDF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @variable guifg=#535CDF guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @variable.builtin guifg=#1C2AA6 guibg=NONE guisp=NONE blend=NONE gui=NONE
