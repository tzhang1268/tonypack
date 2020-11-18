test_that('Tests that individual Date input works', {
  expect_output(days_to_ny(lubridate::ymd("2020-10-22")), daysleft=71)
})

test_that('Tests that multiple Date inputs work', {
  expect_output(days_to_ny(as_date(ymd("2020-10-22"):ymd("2020-10-29"))), daysleft=c(71,70,69,68,67,66,65,64))
})

test_that('Tests that non-Date value results in error', {
  expect_error(days_to_ny("String example not a date"))
})

test_that('Tests that non-Date value within input results in error', {
  expect_error(days_to_ny(cat(lubridate::ymd("2020-10-22"),lubridate::ymd("2009-10-22"), "NA_test", lubridate::ymd("2005-3-22"))))
})
