" Zim syntax highlighting
" Author: Jack Mudge <jakykong@theanythingbox.com>
" * I declare this file to be public domain.
"
" Changelog:
" 2016-09-12 - Jack Mudge - v0.1
"   * Initial creation
"
" Simple syntax file, assumes all mime-type lines are part of the header
" (TODO: Improve this to make sure they're at the beginning of the file only)

" Language: ZimWiki
" Maintainer: Joan Rivera <joan.manuel.rivera+dev@gmail.com>
" URL: https://github.com/joanrivera/vim-zimwiki-syntax
" License: MIT

if exists('b:current_syntax') && b:current_syntax == 'zim'
  finish
endif

syn case ignore

syn match zmFHdr /^\(Content-Type\|Wiki-Format\|Creation-Date\):.*$/
highlight zmFHdr gui=italic

syn match zmWHdr /^\(=\+\).*\1$/
highlight zmWHdr gui=bold

syn match zmWBld /\*\*.*\*\*/
highlight zmWBld gui=bold

syn match zmWItl +//.*//+
highlight zmWItl gui=italic

syn match zmBullet /^\s*\(\[[* ]\]\|\*\)\(\s\|$\)/
highlight zmBullet gui=bold

syn match zmWHlt /__.*__/
highlight zmWHlt gui=inverse

syn match zmWStr /\~\~.*\~\~/
highlight zmWStr gui=underline

syn match zimwikiHeader1 '^=\{6} .\+ =\{6}[[:space:]]*$'
syn match zimwikiHeader2 '^=\{5} .\+ =\{5}[[:space:]]*$'
syn match zimwikiHeader4 '^=\{4} .\+ =\{4}[[:space:]]*$'
syn match zimwikiHeader4 '^=\{3} .\+ =\{3}[[:space:]]*$'
syn match zimwikiHeader5 '^=\{2} .\+ =\{2}[[:space:]]*$'

syn match zimwikiLink '\[\[.\{-1,}\]\]'
syn match zimwikiListItem '^[[:blank:]]*\* .\+'
syn match zimwikiCheckbox '\[[ \*x]\]'
syn match zimwikiStrong '\*\*.\{-1,}\*\*'
syn match zimwikiEmphasis '\/\/.\{-1,}\/\/'
syn match zimwikiUnderline '__.\{-1,}__'
syn match zimwikiVerbatim '\'\'.\{-1,}\'\''
syn match zimwikiStrikeThrough '\~\~.\{-1,}\~\~'
syn match zimwikiImage '{{.\{-1,}}}'
syn match zimwikiSub '_{.\{-1,}}'
syn match zimwikiSup '\^{.\{-1,}}'

syn region zimwikiCode start="'''" end="'''"


hi def link zimwikiHeader1	Title
hi def link zimwikiHeader2	Title
hi def link zimwikiHeader3	Title
hi def link zimwikiHeader4	Title
hi def link zimwikiHeader5	Title

hi def link zimwikiLink 	Underlined
hi def link zimwikiListItem	Special
hi def link zimwikiCheckbox	Conditional
hi def link zimwikiStrong	Type
hi def link zimwikiEmphasis	Identifier
hi def link zimwikiUnderline	Underlined
hi def link zimwikiVerbatim	SpecialComment
hi def link zimwikiStrikeThrough	Comment
hi def link zimwikiImage	Float
hi def link zimwikiSub	Number
hi def link zimwikiSup	Number

hi def link zimwikiCode	SpecialComment


if !exists('b:current_syntax')
  let b:current_syntax = 'zimwiki'
endif


