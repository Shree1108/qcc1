# Generating the random data and writing to csv file 
library("qcc")
# set seed if you need to generate same set of random numbers again
set.seed(100)
# Mean (mu) for data generation
mu = 10
# number of observations 
n = 5
# number of sample
k = 40 
# Standard deviation (s)
s = 1.333333 
D = rnorm(n*k , mu, s)
# Generate random number with min=8 and max = 12 
#D =runif(n*k,8, 12)
#D = rpois(n*k, mu)
batch = rep(1:k, each = n)
E = data.frame(D=D,batch = batch)
readings1 <- qcc.groups(D,batch)
# Write CSV in R
write.csv(readings1, file = "/media/prasad/5348-7327/STTP-Maths/readings-Nor.csv")

