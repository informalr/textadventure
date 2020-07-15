#' Get the text for the room called \code{outside}
#' @export
get_room_outside_text <- function(is_door_open) {
  text <- "You are outside. The moon is shining and a wolf is howling."
  if (isTRUE(is_door_open)) {
    text <- c(text, "The door is open.")
  } else {
    text <- c(text, "The door is closed.")
  }
  text
}
