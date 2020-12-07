times <- c(1:8)

rec = 0;
for(i in times){
    x = sample(0:99,20)
    v1 = unlist(x)
    # convert list to vector
    print(v1)
    flag = 0;    
    for(j in v1){
        if(j<=9){flag=1;} 
    }
    if(!flag) rec = rec + 1
}
cat("number of no any typhoon:\n")
print(rec)
cat("prob:\n")
print(rec/8)

cat("\n")

times <- c(4:15)
ans <- c()
ans_times <- c()

for(i in times){
    tmp = c(1:2^i)
    rec2 = 0;
    for(k in tmp){
        x = sample(0:99,20)
        v1 = unlist(x)
        # convert list to vector

        flag = 0;    
        for(j in v1){
            if(j<=9){flag=1;} 
        }
        if(!flag) rec2 = rec2 + 1
    }
    print("number of no any typhoon:")
    print(rec2)
    cat("prob:\n")
    print(rec2/(2^i))
    ans <- append(ans,rec2/(2^i))
    ans_times <- append(ans_times,(2^i))
}

cat("\n")
print(ans)
print(ans_times)
# prob of every times

par(mfrow=c(1,1))
plot(ans_times,ans,type="l",ylim=c(0,0.25))
abline(h=0.1,col="blue")
points(ans_times,ans)