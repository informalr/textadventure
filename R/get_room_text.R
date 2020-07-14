#' Get the text to describe the room
#' @export
get_room_text <- function() {
  room_description <- get("room_description", envir = .GlobalEnv)

  if (room_description == "outside") {
    textadventure::get_room_outside_text()
  } else {
    testthat::expect_equal(room_description, "inside")
    textadventure::get_room_inside_text()
  }
}
