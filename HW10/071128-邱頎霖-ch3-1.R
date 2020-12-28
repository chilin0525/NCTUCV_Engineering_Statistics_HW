attach(cars)

png(file = "1.png")
plot(speed,dist)
abline(lm(dist~speed))
dev.off()

print(cor(speed,dist))

# linear
summary(lm(dist~speed))

# non-linear
summary(lm(dist~speed+I(speed^2)))

png(file = "linear_nonlinear.png")
plot(speed,dist)
abline(lm(dist~speed))
points(predict(lm(dist~speed)),col='blue')
points(predict(lm(dist~speed+I(speed^2))),col='green')
dev.off()

png(file = "linear.png")
plot(speed,residuals(lm(dist~speed)))
dev.off()

png(file = "nonlinear.png")
plot(speed,residuals(lm(dist~speed+I(speed^2))))
dev.off()


png(file = "f_01.png")
plot(speed,dist)
lines(lowess(speed,dist,f=0.1))
dev.off()

png(file = "f_03.png")
plot(speed,dist)
lines(lowess(speed,dist,f=0.3))
dev.off()

png(file = "f_05.png")
plot(speed,dist)
lines(lowess(speed,dist,f=0.5))
dev.off()