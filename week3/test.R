t1 <- as.POSIXct("07/02/20 05:00:00")
t2 <- as.POSIXct("07-02-20 04:00:00")
t1
t2
t2-t1
t3 <- difftime(as.POSIXct(t1), as.POSIXct(t2),unit="secs")
t3
t4 <- t3 > 0
t4
t6 <- t2-t1
t6 > 0

tmp2 <- as.POSIXct("07/01/20 00:00:00")
tmp1 <- as.POSIXct("06-01-20 00:00:00 LMT")
tmp2
tmp1
tmp2-tmp1
tmp1-tmp2

tmp2 <- as.POSIXct("20/07/01 00:00:00")
tmp1 <- as.POSIXct("20/06/01 00:00:00 LMT")
tmp2
tmp1
tmp2-tmp1