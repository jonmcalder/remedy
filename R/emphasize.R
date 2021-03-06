#' Emphasize
#'
#' Emphasize the selected text.
#'
#' @return emboldened, italicized or strikethrough text (in markdown)
#' 
#' @rdname emphasize
#' @export
#'

italicsr <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("_", a$selection[[1]]$text, "_"))
}

#' @rdname emphasize
#' @export

boldr <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("__", a$selection[[1]]$text, "__"))
}

#' @rdname emphasize
#' @export

strikr <- function(){
  a <- rstudioapi::getSourceEditorContext()
  rstudioapi::insertText(location = a$selection[[1]]$range, text = paste0("~~", a$selection[[1]]$text, "~~"))
}
