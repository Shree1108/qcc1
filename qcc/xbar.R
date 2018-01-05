library("qcc")
# Read the data from the file
MyData <- read.csv(file="/media/prasad/5348-7327/STTP-Maths/readings-Un.csv", header=TRUE, sep=",")
head(MyData)
Myreadings <- MyData[,2:6]
head(Myreadings)
# xbar chart 
q1 = qcc(Myreadings[1:25,], type="xbar", newdata=Myreadings[26:40,])
#invisible(readline(prompt="Press [enter] to continue"))
# R chart
q2 = qcc(Myreadings[1:25,], type="R", newdata=Myreadings[26:40,])
#invisible(readline(prompt="Press [enter] to continue"))
# S - chart 
q3 = qcc(Myreadings[1:25,], type="S", newdata=Myreadings[26:40,])
#invisible(readline(prompt="Press [enter] to continue"))
#Process specification limits are set at 3- sigma
process.capability(q1, spec.limits = c(6,14))

