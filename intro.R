#Intro to R Lesson
#October 28, 2022

#Interacting with R

##I am adding 3 and 5. R is fun!
3+5

x <- 3
y <- 5
x + y
x <- 5

#create a numeric vector and store the vector as a variable called 'glengths' 

glengths <-c(4.6, 3000, 50000)
glengths

#create a characer vector and store the vrctor as a variable as called 'species'

species <- c("ecoli", "human", "corn")
species

#Forget to put quotes around corn
species <- c("ecoli" "human", corn)
species

#combining a vector of numeric and character values
 combined_vector<- c(4.6, 3000, 50000, "ecoli", "human", "corn")
 combined_vector

#create a character vector and store the vector as a variable called 'expression'
 
expression <- c("low", "high", "medium", "high", "low", "medium", "high")
expression

expression <- factor(expression)
expression

#creataing a vector named 'samplegroup' with 9 elements nameley 'CTL, 'KO' and 'OE, 3 of each element
samplegroup <- c("CTL", "CTL", "CTL", "KO", "KO", "KO", "OE", "OE", "OE")

#turning samplegroup into factor data structure
samplegroup <- factor(samplegroup)


#Create a data frame called `favorite_books` with the following vectors as columns:

titles <- c("Catch-22", "Pride and Prejudice", "Nineteen Eighty Four")
pages <- c(453, 432, 328)
favorite_books <- data.frame(titles, pages)


#create a list called `list2` containing `species`, `glengths`, and `number`.
list2 <- list("species", "glengths", "number")

#Create a data frame called `favorite_books` with the following vectors as columns:

titles <- c("Catch-22", "Pride and Prejudice", "Nineteen Eighty Four")
pages <- c(453, 432, 328)
favorite_books <- data.frame(titles, pages)

glengths <- c(glengths, 90) #adding at the end
glengths <- c(30, glengths) #adding at the beginning

sqrt(81)
round(3.14159)
args(round)
example("round")
round(3.14159, 2)

#let's use base R function to calculate **mean** value of the `glengths` vector. You might need to search online to find what function can perform this task.
mean(glengths)

# create a new vector `test <- c(1, NA, 2, 3, NA, 4)`. 
test <- c(1, NA, 2, 3, NA, 4)
mean(test, na.rm=TRUE)

#sorting glengths in descending order.
sort(glengths, decreasing = TRUE)


#write a function called `multiply_it`, which takes two inputs: a numeric value `x`, and a numeric value `y`. The function will return the product of these two numeric values, which is `x * y`. 

multiply_it(x=4, y=6)

#create a data frame by reading the file
metadata <- read.csv(file="data/metadata_file.csv")
metadata


#storing downloaded file as 'proj_summary'
proj_summary <- read.table(file = "data/project-summary.txt", header = TRUE, row.names = 1)

#displaying the content of our metada file
metadata

#display the first 6 lines of the dataset
head(metadata)

#use the class() function on glengths and metadata, how does the output differ between the two?
class(glengths)
class(metadata)

#use the summary() function on the proj_summary dataframe
#       i. what is the median rRNA_rate?
#       ii. how many samples got the “low” level of treatment
summary(proj_summary)

#how long is the samplegroup factor?
length(samplegroup)

#what are the dimensions of the proj_summary dataframe?
dim(proj_summary)

#when you use the rownames() function on metadata, what is the data structure of the output?
str(rownames(metadata))

#how many elements in (how long is) the output of colnames(proj_summary)? Don’t count, but use another function to determine this.
length(colnames(proj_summary))



