test_that("use", {

  assign("room_description", "outside", envir = .GlobalEnv)
  expect_equal(
    get_room_text(),
    get_room_outside_text()
  )
  assign("room_description", "inside", envir = .GlobalEnv)
  room_description <- "inside"
  expect_equal(
    get_room_text(),
    get_room_inside_text()
  )
})
