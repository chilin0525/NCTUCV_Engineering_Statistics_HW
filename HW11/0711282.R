c_mean  <- 50    # 樣本平均數
c_sigma <- 10    # 樣本標準差
n       <- 20   

plot(c(40,60),
     c(0,100),
     type="n",
     xlab="95% confidence interval",
     ylab="n-th testing"
     )

abline(v=c_mean,lty=2,col="red")

# 100 次抽樣
for(i in 1:100){
    # print("hello")
    x       =   rnorm(20,c_mean,c_sigma)
    x_mean  =   mean(x)
    width   =   qt(0.975,n-1)*sd(x)/sqrt(n)
    
    left    =   x_mean - width;
    right   =   x_mean + width;

    if(c_mean>=left && c_mean<=right){
        lines(c(left,right),c(i,i),lty=2)
    } else {
        lines(c(left,right),c(i,i),lty=1)
    }

    # print(x_mean)
}