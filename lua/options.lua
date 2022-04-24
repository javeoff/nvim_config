local bind_options = require('utils/bind_options')

vim.cmd('filetype on')

local options = {
    termguicolors = true;
    tabstop = 2;
    autoindent = true;
    number = true;
    nowrap = true;
    linebreak = true;
    shiftwidth = 2;
    numberwidth = 1;
    mouse = 'a';
    lazyredraw = true;
    completeopt = 'menuone,noinsert,noselect';
    wildignorecase = true;
    wildignore     = ".git/**,.hg,.svn,*.pyc,*.o,*.out,*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store,**/node_modules/**,**/bower_modules/**";

-- 	cursorline = false;
    modeline = true;
    modelineexpr = true;
    modelines = 4;

    foldmethod = 'expr';
    encoding = 'utf-8';
    termencoding = 'utf-8';
    fileencoding = 'utf-8';
    makeencoding = 'utf-8';
    printencoding = 'utf-8';
    bomb = true;
    guifont = 'Monaco:h10';
}

bind_options(options)


