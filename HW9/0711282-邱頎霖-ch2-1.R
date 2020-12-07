times <- c(1:8)

rec = 0;
for(i in times){
    x = sample(0:99,20)
    v1 = unlist(x)
    # convert list to vector
    print(v1)
    flag = 0;    
    for(j in v1){
        if(j<=9){
            flag=1;
        } 
    }
    if(!flag) rec = rec + 1
}
print("number of no any typhoon:")
print(rec)

cat("\n")

