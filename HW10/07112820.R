attach(cars)

plot(speed,dist)
abline(lm(dist~speed))

print(cor(speed,dist))

# linear
summary(lm(dist~speed))

# non-linear
summary(lm(dist~speed+I(speed^2)))

