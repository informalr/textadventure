#' Get the text for the room called \code{outside}
#' @export
get_room_outside_text <- function() {
  text <- "You are outside. The moon is shining and a wolf is howling."
  is_door_open <- get("is_door_open", envir = .GlobalEnv)
  if (isTRUE(is_door_open)) {
    text <- c(text, "The door is open")
  } else {
    testthat::expect_false(is_door_open)
    text <- c(text, "The door is closed")
  }
  text
}
