library(jsonlite)
library(purrr)

new_max_score <- 3

original <- read_json("/autograder/results/results.json",simplifyVector = TRUE)
original$tests$max_score <- new_max_score
original$tests$score <- new_max_score*original$tests$score
original$score <- sum(original$tests$score)

write_json(original,"/autograder/results/results2.json",dataframe = "rows", auto_unbox = TRUE)
