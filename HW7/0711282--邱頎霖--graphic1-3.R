attach(iris) # connect to iris dataset

density_SepLen = density(Sepal.Length)
density_SepWid = density(Sepal.Width)
density_PetLen = density(Petal.Length)
density_PetWid = density(Petal.Width)

str(density_SepLen)
str(density_SepWid)
str(density_PetLen)
str(density_PetWid)

par(mfrow=c(2,4))

hist(Sepal.Length,freq = FALSE,col = "pink")
lines(density_SepLen$x,density_SepLen$y,col="blue")
hist(Sepal.Width,freq = FALSE,col = "pink")
lines(density_SepWid$x,density_SepWid$y,col="blue")
qqnorm(Sepal.Length)
qqline(Sepal.Length)
qqnorm(Sepal.Width)
qqline(Sepal.Width)
hist(Petal.Length,freq = FALSE,col = "pink")
hist(Petal.Width,freq = FALSE,col = "pink")
qqnorm(Petal.Length)
qqline(Petal.Length)
qqnorm(Petal.Width)
qqline(Petal.Width)

# should fix bin in hist