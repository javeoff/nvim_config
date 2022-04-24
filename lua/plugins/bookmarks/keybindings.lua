require("which-key").register({
    ['<Tab>'] = {':BookmarkShowAll<CR>', 'Show all bookmarks'},
    ['a'] = {':Unite vim_bookmarks -here<CR>', 'Open bookmarks menu (<q> - close window)'},
    ['m'] = {':BookmarkToggle<CR>', 'Toggle bookmark at current line'},
    ['i'] = {':BookmarkAnnotate ', 'Annotate bookmark at current line'},
    ['n'] = {':mn<CR>', 'Jump to next bookmark in buffer'},
    ['p'] = {':mp<CR>', 'Jump to previous bookmark in buffer'},
    ['N'] = {':cn<CR>', 'Jump to next bookmark in active buffers'},
    ['P'] = {':cp<CR>', 'Jump to previous bookmark in active buffers'},
    ['c'] = {':BookmarkClear<CR>', 'Clear bookmarks in current buffer only'},
    ['x'] = {':BookmarkClearAll<CR>', 'Clear bookmarks in all buffers'},

    ['kk'] = {'Move bookmark up'},
    ['jj'] = {'Move bookmark down'},
}, {
    prefix = 'm',
    silent = true,
    noremap = true,
    nowait = false,
})




