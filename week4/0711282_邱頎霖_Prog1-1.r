num = rep(1,1005)
ans <- vector()
num[1] = 0
total=0

check_prime <- function(){
    i = 2
    while(i<1000){
        if(num[i]){
            total = total + 1
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
    return(total)
}

sink("prime.txt")
cat("There are prime number:",sep="\n")
total <- check_prime()
sink()

cat("total:")
cat(total)