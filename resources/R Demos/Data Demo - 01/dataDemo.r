# numeric data
# to store data, a = 5, r uses an arrow syntax
# variable <- value

a <- 3 # stores the value of 3 into a variable named a
b <- 3.5554 # stores the value of 3.5554 into a variable named b

# character / string based data
c <- "This is a string"
d <- "A"
e <- "This is another string"

# Booleans
f <- TRUE
g <- FALSE
h <- T
i <- F

# vectors are the simple numerical indexed data structures in R
# R is a one-index language - indexes start at 1 instead of 0
basketballPlayers <- c("jordan", "oneal", "bryant", "james", "iverson", "curry")
print(basketballPlayers)

disneyCharacters <- c("mickey", "donald", "goofy", "minnie")

# to combine vectors
combinedVectors <- c(disneyCharacters, basketballPlayers)
print(combinedVectors)