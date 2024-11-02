install.packages("arules")
library(arules)
data <- read.csv('D:\\Censo2018\\Censo2018\\PERSONA_BDP.csv', sep=",", nrows = 1500000)
data
data <- data[ , !names(data) %in% c("DEPARTAMENTO")]
data <- data[ , !names(data) %in% c("PEA")]
data <- data[ , !names(data) %in% c("POCUPA")]
data <- data[ , !names(data) %in% c("PEI")]
reglas <- apriori(data, parameter = list(support=0.4, confidence=0.6))
reglasframe <- as (reglas, "data.frame")


