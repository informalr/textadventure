#' Get the text for the room called \code{outside}
#' @export
get_room_inside_text <- function(is_door_open) {
  text <- paste0(
    "You are inside. ",
    "Through a window, the moon is shining. You hear a wolf howling."
  )
  if (isTRUE(is_door_open)) {
    text <- c(text, "The door is open.")
  } else {
    text <- c(text, "The door is closed.")
  }
  text
}
