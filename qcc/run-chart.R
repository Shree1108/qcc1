#Load the library  
library(qicharts2)
# Read the data from the file
MyData <- read.csv(file="/media/prasad/5348-7327/STTP-Maths/sttp.csv", header=TRUE, sep=",")
#Plot a run plot of the Reading 1
qic(MyData$Reading1)
qic(MyData$Sample.No., MyData$Reading1, data  = MyData, chart = 'xbar', title = 'Average Reading (Xbar chart)', ylab  = "Width", xlab  = "Sample Number")
