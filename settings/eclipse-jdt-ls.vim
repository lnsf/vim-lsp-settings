augroup vimlsp_settings_eclipse_jdt_ls
  au!
  LspRegisterServer {
      \ 'name': 'eclipse-jdt-ls',
      \ 'cmd': {server_info->lsp_settings#get('eclipse-jdt-ls', 'cmd', [lsp_settings#exec_path('eclipse-jdt-ls')])},
      \ 'root_uri':{server_info->lsp_settings#get('eclipse-jdt-ls', 'root_uri', lsp_settings#root_uri('eclipse-jdt-ls'))},
      \ 'initialization_options': lsp_settings#get('eclipse-jdt-ls', 'initialization_options', v:null),
      \ 'whitelist': lsp_settings#get('eclipse-jdt-ls', 'whitelist', ['java']),
      \ 'blacklist': lsp_settings#get('eclipse-jdt-ls', 'blacklist', []),
      \ 'config': lsp_settings#get('eclipse-jdt-ls', 'config', lsp_settings#server_config('eclipse-jdt-ls')),
      \ 'workspace_config': lsp_settings#get('eclipse-jdt-ls', 'workspace_config', {}),
      \ 'semantic_highlight': lsp_settings#get('eclipse-jdt-ls', 'semantic_highlight', {}),
      \ }
augroup END
