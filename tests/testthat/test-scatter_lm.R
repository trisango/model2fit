test_that("Plot returns ggplot object",{
  test3 <- scatter_lm('body_mass_g', 'bill_length_mm', palmerpenguins::penguins)
  expect_is(test3,"ggplot")
})

test_that("Plot uses correct data", {
  test2 <- scatter_lm('body_mass_g', 'bill_length_mm', palmerpenguins::penguins)
  expect_that(palmerpenguins::penguins, equals(test2$data))
})

test_that("Printing ggplot object works", {
  test5 <- scatter_lm('body_mass_g', 'bill_length_mm', palmerpenguins::penguins)
  expect_error(print(test5), NA)
})
