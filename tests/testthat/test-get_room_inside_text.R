test_that("use", {
  text <- paste0(
    "You are inside. ",
    "Through a window, the moon is shining. You hear a wolf howling."
  )
  expect_equal(get_room_inside_text(is_door_open = TRUE),
               c(text, "The door is open."))
  expect_equal(get_room_inside_text(is_door_open = FALSE),
               c(text, "The door is closed."))
})
