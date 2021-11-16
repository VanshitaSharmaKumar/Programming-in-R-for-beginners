x = c(20,0.16,36,-66.4) # making qa vector 
x[5] = 58 # adding element 58 on the 5th position 
x=x*1.31 # multiplying all elements in x by 1.31
sorting = sort(x) # sorting elements of x in ascending order
round(x,1) # rounding elements in vector by 1 decimal point

# x[x>0] selects all values that are all positive

# Question 7 a. 

# function that subtracts 3 from every element of a vector x and 
# derives the square of that element 
questionA = function(x){(x-3)^2}
questionA(c(3,5,4,7))

# A function that draws, with replacement, 50 balls from the vase, that also computes 
# the fractions of red and white balls in the draw, and that has these fractions as its output.
#Question 7 b. 
my_vec = c(30,70)
sample(my_vec, size=2, replace = TRUE)
# my_vec(c(30,70))# 30 red and 70 white
my_vec = function(x){
 return(c(x/sum(my_vec)))
  
}


balls = function(x){
  redCount = 0
  whiteCount = 0
  sample = sample(x, 50, replace=TRUE)
  for(ball in sample){
    if (ball == 0) { #red
      redCount = redCount + 1
    }
    else{ #white
      whiteCount = whiteCount + 1
    }
  }
  return(c(redCount/50, whiteCount/50))
}

vase = c(rep(0, 30), rep(1, 70))

balls(vase)
