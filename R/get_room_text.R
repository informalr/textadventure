#' Get the text to describe the room
#' @export
get_room_text <- function(room, is_door_open) {
  if (room == "outside") {
    textadventure::get_room_outside_text(is_door_open)
  } else {
    textadventure::get_room_inside_text(is_door_open)
  }
}
