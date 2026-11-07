#CODE L
#Write a R program to print first n elements of Fibonacci Series.
n <- as.integer(readline("Enter limit: "))

a <- 0
b <- 1

for (i in 1:n) {
  cat(a, "\n")
  c <- a + b
  a <- b
  b <- c
}