#submission for Mark Awai Sunday July 17th, 2016

# R Bridge - Week 1 Assignment
# Please place your solution in a single file in your GitHub repository, and provide the URL in your assignment link.
# 1. Write a loop that calculates 12-factorial.
# 2. Show how to create a numeric vector that contains the sequence from 20 to 50 by 5.
# 3. Show how to take a trio of input numbers a, b, and c and implement the quadratic equation.

#---------------------
# 1.
#---------------------
factorial <- function(x) {
  total <- 1
  for ( i in 1:x) {
    currentNumber <- i
    print(currentNumber)

    total <- total * currentNumber
    print(total)

  }
  return (total)

}

factorial(12)

#---------------------
# 2.
#---------------------
numVector <- c(20:50)
5 * numVector


#---------------------
# 3. Quadratic Euation
#---------------------
quadratic <- function(a,b,c) {
  answerVector <- c()


  for( i in 0:1) {
    if ( i == 0) {
      step1<- (-b) + sqrt( (b^2) - 4 * a * c)
      answerVector[1] <- step1 / ( 2 * a)

    } else {
      step1<- (-b) - sqrt( (b^2) - 4 * a * c)
      answerVector[2] <- step1 / ( 2 * a)
    }



  } #end of for loop

  return  (answerVector)
} #end of quadratic function
