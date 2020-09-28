set.seed(1)
statis.score <- sample(0:100,30,replace=TRUE)
print(statis.score)

top_ten_score <- statis.score[c(1:10)]
print(top_ten_score)
print(mean(top_ten_score))
print(sd(top_ten_score))

pass_num = 0
id=0
max_score = 0
min_score = 0
pass_student <- vector()
for(i in statis.score){
    id <- id + 1
    if(i>=60){
        pass_num <- pass_num + 1
        pass_student <- c(pass_student,i)
    }
    if(i>max_score) max_score <- i
    if(i<min_score) min_score <- i
}
print(pass_num)
print(pass_student)
print(min_score)
print(max_score)

tmp <- sort(statis.score,decreasing=TRUE)
sort_score <- tmp[c(1:10)]
mean(sort_score)
sd(sort_score)

summary(statis.score)
