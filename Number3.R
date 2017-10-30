#load library
library(tidyverse)

#load data
dat <- read.csv(url("http://esapubs.org/archive/ecol/E084/093/Mammal_lifehistories_v2.txt"), 
                sep = "\t", nrows = 1440, na.strings = c("-999.00", "999.00"))

#rest of your code goes here
dat <- read.csv("Mammal_data.txt", header = TRUE, sep = "\t", na.strings = c("-999.00", "999.00"), nrows = 1440)
ggplot(data = dat, aes (x = "mass.g." , y = "newborn.g.")) + geom_line()

require(tidyverse)
dat <- read.csv(url("http://esapubs.org/archive/ecol/E084/093/Mammal_lifehistories_v2.txt"), 
                sep = "\t", nrows = 1440, na.strings = c("-999.00", "999.00"))

ggplot(data = dat, aes(x = mass.g., y = newborn.g.)) + geom_point() +
  labs(x = "mass.g.", y = "newborn.g.")
       