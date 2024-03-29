## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval = FALSE------------------------------------------------------------
#    # devtools::load_all(".")
#  library(moranajp)
#  library(magrittr)
#  library(dplyr)
#  library(stringi)
#  library(grid)
#  
#  review <-
#    review_sudachi_c %>%
#    unescape_utf() %>%
#    dplyr::filter(.data[["text_id"]] < 20) %>%
#    clean_up() %>%
#    #
#    delete_parenthesis() %>%
#    align_sentence(s_id = "text_id")
#  
#  review %>%
#    ggplot(aes(x, .data[[s_id]], label = term)) +
#    geom_text() +
#    theme_bw()

## ---- eval = FALSE------------------------------------------------------------
#  review  %>%
#    #   dplyr::filter(text_id < 5) %>%
#    dplyr::select(term, x) %>%
#    dplyr::group_by(term, x) %>%
#    tally() %>%
#    arrange(desc(n))
#  
#  grid::grid.newpage()
#  vp <- viewport(width = max(text$x))
#  grid::grid.text(text[[surface_form]], text$x, just = c("right", "centre"), vp = vp)
#  

## ---- eval = FALSE------------------------------------------------------------
#  review_mecab   %>% colnames() %>% stringi::stri_unescape_unicode()
#  review_ginza   %>% colnames() %>% stringi::stri_unescape_unicode()
#  review_chamame %>% colnames() %>% stringi::stri_unescape_unicode()

## ---- eval = FALSE------------------------------------------------------------
#  width <- function(x, unit = "mm"){
#    grid::stringWidth(x) %>%
#    grid::convertWidth(unit = unit)
#  }
#  one_jp_width <- function(unit = "mm"){
#    space <- stringi::stri_unescape_unicode("\u3000")
#    grid::stringWidth(space) %>%
#    grid::convertWidth(unit = unit)
#  }

