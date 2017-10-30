#load library
library(tidyverse)

#load data from the internet, using tabs to seperate and replacing -999, etc with NA's 
dat <- read.csv(url("http://www.esapubs.org/archive/ecol/E088/096/avian_ssd_jan07.txt"),
                sep = "\t", na.strings = c("-999.00", "999.00", "-999", "999"))

#your code goes here <- 
size_data <- read.csv("data_2.txt", header = TRUE, sep = "\t")

ggplot(data = size_data, aes(x= F_mass)) +
  labs(x = "female Mass(g)") +
  geom_histogram()
 
?hist

ggplot(data = size_data, aes(x= F_mass)) +
  labs(x = "female Mass(g)") +
  scale_x_log10() +
  geom_histogram(fill = "blue") 


