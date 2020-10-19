num = rep(1,1005)
ans <- vector()
num[1] = 0

check_prime <- function(){
    i = 2
    while(i<1000){
        if(num[i]){
            #ans <- c(ans,i)
            cat(i,sep="\n")
            j=i+i
            while(j<1000){
                num[j] = 0
                j = j+i
            }
        }
        i = i+1
    }
}

sink("prime.txt")
check_prime()
sink()