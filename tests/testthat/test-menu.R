test_that("menu()", {
     expect_equal(menu("Plot", "Plot", "chart-bar"),
         shinydashboard::menuItem("Plot", tabName = "Plot", icon = icon("chart-bar")))
  expect_error(menu("Plot","chart-bar"))
  expect_error(menu("Plot","Plot"))
})

