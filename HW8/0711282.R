library(moments)
# should install package if you not have the library

x <- c(37,37.5,38.1,40,40.2,40.8,41,42,43.1,43.9,44.1,44.6,45,46.1,47,62,64.3,68.8,70.1,74.5)

par(mfrow=c(1,3))

hist(x,col=gray(0.5),pro=TRUE,xlim=c(30,80),ylim=c(0,0.1))
lines(density(x),col = 'blue')
#curve(x,from=30,to=80,col='black',add=TRUE,lty=3)

SK <- skewness(x)
KT <- kurtosis(x)
str.SK <- paste('SK = ',round(SK,3))
str.KT <- paste('KT = ',round(KT,3))
str <- c(str.SK,str.KT)
legend(50,0.1,str,bg='green')

boxplot(x,range=1.0,horizontal=TRUE)
q1 <- (x[5]+x[6])/2
q3 <- (x[15]+x[16])/2
print(q1)
print(q3)
print(2*q3-q1)
print(2*q1-q3)
max_num = 2*q3-q1
min_num = 2*q1-q3
ans = 0;

for(i in 1:length(x)){
    if(x[i]>=max_num || x[i]<=min_num){
        ans = ans + 1;
    }
}
print(ans)

qqnorm(x)
qqline(x)
# Not normal population distribution
