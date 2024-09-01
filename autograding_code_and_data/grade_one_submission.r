# load in the package
library(gradeR)
library(jsonlite)

calcGradesForGradescope("assignment1.R",       # each student's submission must be named this!
                        "assignment1_tests.r") # the file with all of the testthat tests 
new_max_score <- 3

original <- read_json("/autograder/results/results.json",simplifyVector = TRUE)
original$tests$max_score <- new_max_score
original$tests$score <- new_max_score*original$tests$score
original$score <- sum(original$tests$score)

write_json(original,"/autograder/results/results.json",dataframe = "rows", auto_unbox = TRUE)
