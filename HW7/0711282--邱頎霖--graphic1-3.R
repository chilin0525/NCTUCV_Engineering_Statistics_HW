attach(iris) # connect to iris dataset

density_SepLen = density(Sepal.Length)
density_SepWid = density(Sepal.Width)
density_PetLen = density(Petal.Length)
density_PetWid = density(Petal.Width)

str(density_SepLen)
str(density_SepWid)
str(density_PetLen)
str(density_PetWid)

par(mfrow=c(2,2),lwd=2)

hist(Sepal.Length,
    main = "Sepal.Length",
    freq = FALSE,
    breaks = seq(4,8,len=10),
    xlim = c(4,8),
    ylim = c(0,0.5),
    col = "pink")
lines(density_SepLen$x,density_SepLen$y,col="blue")

hist(Sepal.Width,
    main = "Sepal.Width",
    freq = FALSE,
    breaks = seq(2,5,len=10),
    xlim = c(2,5),
    ylim = c(0,1.2),
    col = "pink")
lines(density_SepWid$x,density_SepWid$y,col="blue")

hist(Petal.Length,
    main = "Petal.Length",
    freq = FALSE,
    breaks = seq(1,7,len=10),
    xlim = c(1,7),
    ylim = c(0,0.5),
    col = "pink")
lines(density_PetLen$x,density_PetLen$y,col="blue")

hist(Petal.Width,
    main = "Petal.Width",
    freq = FALSE,
    breaks = seq(0,3,len=10),
    xlim = c(0,3),
    ylim = c(0,0.8),
    col = "pink")
lines(density_PetWid$x,density_PetWid$y,col="blue")

# should fix bin in hist