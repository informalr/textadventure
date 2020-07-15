test_that("use", {
  expect_equal(
    get_room_text(room = "outside", is_door_open = TRUE),
    get_room_outside_text(is_door_open = TRUE)
  )

  expect_equal(
    get_room_text(room = "outside", is_door_open = FALSE),
    get_room_outside_text(is_door_open = FALSE)
  )

  expect_equal(
    get_room_text(room = "inside", is_door_open = TRUE),
    get_room_inside_text(is_door_open = TRUE)
  )

  expect_equal(
    get_room_text(room = "inside", is_door_open = FALSE),
    get_room_inside_text(is_door_open = FALSE)
  )
})
