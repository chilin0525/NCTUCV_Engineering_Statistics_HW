set.seed(1)
statis.score <- sample(0:100,30,replace=TRUE)
print(statis.score)

top_ten_score <- statis.score[c(1:10)]
print(top_ten_score)
print(mean(top_ten_score))
print(sd(top_ten_score))

pass_num = 0
id=0
pass_student <- vector()
for(i in statis.score){
    id <- id + 1
    if(i>=60){
        pass_num <- pass_num + 1
        pass_student <- c(pass_student,i)
    }
}
print(pass_num)
print(pass_student)
