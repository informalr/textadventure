test_that("use", {
  text <- "You are outside. The moon is shining and a wolf is howling."
  expect_equal(get_room_outside_text(is_door_open = TRUE),
               c(text, "The door is open."))
  expect_equal(get_room_outside_text(is_door_open = FALSE),
               c(text, "The door is closed."))
})
