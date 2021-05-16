require("markdown-preview").setup()

-- the nvim will auto close current preview window when change from markdown buffer to another buffer
let g:mkdp_auto_close = 1

-- the vim will refresh markdown when save the buffer or  leave from insert mode, default 0 is auto refresh markdown as you edit or move the cursor
let g:mkdp_refresh_slow = 0

-- preview server available to others in your network by default, the server listens on localhost (127.0.0.1)
let g:mkdp_open_to_the_world = 0

-- use custom IP to open preview page useful when you work in remote vim and preview on local browser more detail 
-- see: https://github.com/iamcco/markdown-preview.nvim/pull/9
let g:mkdp_open_ip = ''

-- specify browser to open preview page
let g:mkdp_browser = ''

-- echo preview page url in command line when open preview pageult
let g:mkdp_echo_preview_url = 0

-- options for markdown render
let g:mkdp_preview_options = {
    'mkit': {}, -- markdow-it options for render
    'katex': {}, -- katex options for math
    'uml': {}, -- markdown-it-plantuml options
    'disable_sync_scroll': 0, -- sync scroll
    'sync_scroll_type': 'middle',
    'hide_yaml_meta': 1, -- hide yaml metadata
    'sequence_diagrams': {}, -- js-sequence-diagrams options
    'flowchart_diagrams': {},
    'content_editable': v:false, -- content editable for preview page
    'disable_filename': 0 -- filename header for preview page
}

-- use a custom markdown style must be absolute path like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

-- use a custom highlight style must absolute path like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

-- use a custom port to start server or random for empty
let g:mkdp_port = ''

-- preview page title - ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

-- recognized filetypes these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']
