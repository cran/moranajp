dots <- function(...) {
  rlang::eval_bare(substitute(alist(...)))
}
