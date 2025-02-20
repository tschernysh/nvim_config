local status, kommentary = pcall(require, 'kommentary.config')
if not status then return end


kommentary.configure_language("javascript", {
  prefer_single_line_comments = false,
  use_consistent_indentation = true,
  ignore_whitespace = true,
  multi_line_comment_strings = { "/*", "*/" },
})

kommentary.configure_language("javascriptreact", {
  prefer_single_line_comments = false,
  use_consistent_indentation = true,
  ignore_whitespace = true,
  multi_line_comment_strings = { "/*", "*/" },
})

kommentary.configure_language("typescriptreact", {
  prefer_single_line_comments = false,
  use_consistent_indentation = true,
  ignore_whitespace = true,
  multi_line_comment_strings = { "/*", "*/" },
})
