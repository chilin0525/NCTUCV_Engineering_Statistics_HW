attach(iris) # connect to iris dataset



par(mfrow=c(2,2),lwd=3)

qqnorm(Sepal.Length,col="blue")
qqline(Sepal.Length,col="red")
qqnorm(Sepal.Width,col="blue")
qqline(Sepal.Width,col="red")
qqnorm(Petal.Length,col="blue")
qqline(Petal.Length,col="red")
qqnorm(Petal.Width,col="blue")
qqline(Petal.Width,col="red")

# should fix bin in hist