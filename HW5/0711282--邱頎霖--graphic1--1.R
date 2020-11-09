attach(iris) # connect to iris dataset
jpeg("test.jpeg",width=960,height=960)

check.plot <- function(n){
    for(i in 1:n){
        if(i==1) hist(Sepal.Length,main="Histogram of Sepal.Length",xlab="Sepal.Length",ylab="Frequency")
        else if(i==2) boxplot(Petal.Length)
        else if(i==3) plot(Sepal.Length,Petal.Length,xlab="Sepal.Length",ylab="Petal.Length")
        else if(i==4) boxplot(Sepal.Length,horizontal=T)
        else plot(Petal.Width,Petal.Length,ylab="Petal.Length",xlab="Petal.Width")
    }

}
par(mai=c(0.5,0.5,0.5,0.5),cex.lab=1.0)
mat <- matrix(data = c(0,2,0,1,3,4,0,5,0), nrow = 3, ncol = 3)
layout(mat,width=c(1,2,2),heights=c(1,3))
check.plot(5)

dev.off()