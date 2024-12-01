## R Personal Help File
## Libraries:

library(stringr)
library(dslabs)
library(dplyr)

####Intro stuff

## How to create a data frame: (name) <- (database name)

##contain function: c("what", "is", "being", "contained")
##example:

us_contagious_diseases[, c("disease", "count", "population")]

## ? used in front of unknown object to get help file

## sample() takes a *random* sample of the specified size from the elements 
## of x using either with or without replacement. example:

sample(x = c("heads", "tails"), size = 1000, replace = T)

## gsub() is in a family of functions that has its own help page

## anyNA() and is.na(): NA is a logical constant of length 1 which contains a 
## missing value indicator

## $ to speciify which column, 
##example: 

mtcars$hp

##this specifies the hp column of the mtcars database

##------------------------


## != means is not equal to

## dplyr library
#In dplyr, n() is sample size.  Make sure it's blank.

## select() used to choose specific columns from a data frame. allows you to
## subset your dataset by including or excluding columns based on their name
## or position. example:

us_contagious_diseases %>% 
  select(disease, count, population)


## mutate(), used to  create or modify columns in a data frame.
## example:

mtcars %>% 
  
  mutate(l_100km = round(235.215 / mpg, 1))

## ifelse() checks a condition, and provides a result based on whether it is 
## true or false. example:

Mass_Effect <- stars %>% 
  mutate(temp_recode = ifelse(temp <= 10000, "Chilly", 
                              ifelse(temp >= 20000, "Hot", "Goldilocks")))

## unique() is used to find and return the unique values in a data frame,
## vector, or list. It removes duplicate entries. example:

Movie_Night <- unique(Movie_Night)


##------------------------


## filter() allows you to filter your dataset by including only the rows that
## meet your specified condition. 

#Using commas with filter seems to automatically assume "AND".

## str_detect() is used to check if a pattern (word or character) exists in a 
## string. It returns true or false for each element, indicating if the pattern
## was found.
##example, including both:

Pew_Pew <- movielens %>% 
  filter(str_detect(genres, "Sci-Fi"))
View(Pew_Pew)

## Regex used for specific search, to filter a word without results including 
## the word inside of another word: "\\bWord\\b" 
##Example below:

Dog_And_Dogs <- movielens %>%
  filter(str_detect(title, "\\bDog\\b|\\bDogs\\b"))
View(Dog_And_Dogs)

## lapply() function, stands for "list apply". it is a looping function
## example:

lapply(iris, mean)

## rnorm, or normal distribution

## hist can be used to make a histogram from the data. example:

hist(sample(1:6, 10000, T) + sample(1:6, 10000, T))

