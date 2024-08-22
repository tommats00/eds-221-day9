
library(reprex)
library(palmerpenguins)
library(tidyverse)
# Reprex Package used to simplify code to fix your error

ggplot(data = penguins, aes(x = bill_length_mm, y = flipper_length_mm)) %>% 
  geom_point()

## ONLY need the variables we are working with in the data set (bill, flipper length)

## Don't need to use the whole column of data for each variable... Can SUBSET the data

## DONT want people to have to load data or package ## using datapasta::we can load as  tibble and it will spit out df code

## create a reprex to reproduce error
# create a mini dataset to work with


datapasta::df_paste(head(penguins, 5)[,c("bill_length_mm", "flipper_length_mm")])


##### Reprex

my_data <- data.frame(
     bill_length_mm = c(39.1, 39.5, 40.3, NA, 36.7),
  flipper_length_mm = c(181L, 186L, 195L, NA, 193L)
)


ggplot(data = my_data, aes(x = bill_length_mm, y = flipper_length_mm)) %>% 
  geom_point()

####### Reprex end