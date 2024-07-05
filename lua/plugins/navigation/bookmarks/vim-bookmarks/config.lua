vim.cmd("highlight BookmarkSign ctermbg=NONE ctermfg=160")
vim.cmd("highlight BookmarkLine ctermbg=194 ctermfg=NONE")
vim.cmd("let g:bookmark_sign = '⚑'");

vim.cmd([[
	function! g:BMWorkDirFileLocation()
    let filename = 'bookmarks'
    let location = ''
    if isdirectory('.git')
        " Current work dir is git's work tree
        let location = getcwd().'/.git'
    else
        " Look upwards (at parents) for a directory named '.git'
        let location = finddir('.git', '.;')
    endif
    if len(location) > 0
        return location.'/'.filename
    else
        return getcwd().'/.'.filename
    endif
	endfunction
]])

