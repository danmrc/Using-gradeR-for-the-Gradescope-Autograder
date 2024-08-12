library(testthat)

# each call to test_that() produces one test
# each test represents one point value
# you can have multiple tests for each question


test_that("First Regression (visible)", {
  
  library(AER)
  data("MASchools")
  
  reg1_test <- lm(score4 ~ stratio + lunch + income, data = MASchools)
  expect_equal(reg1, reg1_test)

})

test_that("Robust SE I (visible)", {
  
  library(AER)
  data("MASchools")
  
  reg1_test <- lm(score4 ~ stratio + lunch + income, data = MASchools)
  hc_test1 <- vcovHC(reg1_test)
  expect_equal(hc1, hc_test1)
  
})

test_that("Second Regression (visible)", {
  
  library(AER)
  data("MASchools")
  
  reg2_test <- lm(score4 ~ stratio + lunch + income + special + exptot, data = MASchools)
  expect_equal(reg2, reg2_test)
  
})

test_that("Robust SE II (visible)", {
  
  library(AER)
  data("MASchools")
  
  reg2_test <- lm(score4 ~ stratio + lunch + income + special + exptot, data = MASchools)
  hc_test2 <- vcovHC(reg2_test)
  expect_equal(hc2, hc_test2)
  
})