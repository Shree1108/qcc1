library("qcc")
# Read the data from the file
MyData <- read.csv(file="/media/prasad/5348-7327/STTP-Maths/MR.csv", header=TRUE, sep=",")
head(MyData)
# p-chart
q1 = with(MyData,qcc(D[1:25], sizes=Size[25], type="p"))
# np -chart
q1 = with(MyData,qcc(D[1:25], sizes=Size[25], type="np"))
