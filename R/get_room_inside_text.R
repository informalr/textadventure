#' Get the text for the room called \code{outside}
#' @export
get_room_inside_text <- function() {
  text <- paste0(
    "You are inside. ",
    "Through a window, the moon is shining. You hear a wolf howling."
  )
  is_door_open <- get("is_door_open", envir = .GlobalEnv)
  if (isTRUE(is_door_open)) {
    text <- c(text, "The door is open")
  } else {
    testthat::expect_false(is_door_open)
    text <- c(text, "The door is closed")
  }
  text
}
