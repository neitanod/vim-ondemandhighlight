vim-ondemandhightlight
=========

Highlight a word from inside vim. The color is chosen at random but
persisted across sessions.


## Installation

Pathogen:
```
git clone https://github.com/neitanod/vim-ondemandhightlight ~/.vim/bundle/vim-ondemandhightlight
```

VimPlug:

Put this on your .vimrc:
```
Plug 'https://github.com/neitanod/vim-ondemandhightlight'
```

## Usage

By default the plugin maps these key sequences:

    <leader>=  to regular highlight the word under cursor
    <leader>-  to super highlight (a more aggressive background color highlighting)
    <leader>_  to highlight

If you prefer different mappings just put this on your .vimrc:

    let g:ondemand_highlight_auto_map = 0

Then you can add your own mappings:

    nnoremap <some_key_sequence> :Highlight <C-r><C-w><CR>
    nnoremap <some_key_sequence> :HighlightSuper <C-r><C-w><CR>
    nnoremap <some_key_sequence> :Unhighlight <C-r><C-w><CR>

Other available commands:

    OnDemandHighlightOn     to turn all functionality on
    OnDemandHighlightOff    to turn all functionality off

Those two toggles are also persistent between sessions.

They don't change the list of highlighted words, just turn highlighting on and
off altogether.


## Author

This version (currently hosted at https://github.com/neitanod/vim-ondemandhighlight) has been improved by Sebastián Grignoli.
Taken from [a plugin by epage](https://github.com/epage/vim-ondemandhightlight), 
based on a [gist](https://gist.github.com/akkartik/8642131) by [Kartik Agaram](http://akkartik.name) 
(contact him at ondemandhighlight@akkartik.com).  
Experimenting with an idea by [Evan Brooks](https://medium.com/p/3a6db2743a1e).

Discussion: http://www.reddit.com/r/programming/comments/1w76um/coding_in_color



