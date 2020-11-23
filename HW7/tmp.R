attach(iris) # connect to iris dataset



par(mfrow=c(2,2),lwd=3)

qqnorm(Sepal.Length,col="blue",ylab="Sepal.Length",pch=0)
qqline(Sepal.Length,col="red")
qqnorm(Sepal.Width,col="blue",ylab="Sepal.Width",pch=5)
qqline(Sepal.Width,col="red")
qqnorm(Petal.Length,col="blue",ylab="Petal.Length",pch=5)
qqline(Petal.Length,col="red")
qqnorm(Petal.Width,col="blue",ylab="Petal.Width",pch=6)
qqline(Petal.Width,col="red")

# should fix bin in hist