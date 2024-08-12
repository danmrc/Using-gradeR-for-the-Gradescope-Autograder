# Jane Doe's assignment 1
# Aug. 8 2019
# STAT 101

library(AER)

data("MASchools")

reg1 <- lm(score4 ~ stratio + lunch + income, data = MASchools)
hc1 <- vcovHC(reg1)

reg2 <- lm(score4 ~ stratio + lunch + income + special, data = MASchools)