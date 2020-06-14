library(HMM)
library(depmixS4)
library(matlab)
library(quantmod)
library(xgboost)
source("element.R")
source("dcb_sum_L2.R")
source("dcb_sum_L1.R")
source("dcb_sum_cum.R")
time_start<-Sys.time()
pre.data<-dcb_sum_L2(tail(dcb,912))
time_end<-Sys.time()
time_end-time_start
pre.data 
 
   
###############################################
time_start<-Sys.time()
L2_159<-dcb_sum_cum(tail(dcb,720),159)
L2_309<-dcb_sum_cum(tail(dcb,720),309)
L2_459<-dcb_sum_cum(tail(dlt,720),459)
L2_609<-dcb_sum_cum(tail(dcb,720),609)
pre.data<-dcb_sum_L2(tail(dcb,912))
sum_l2_ab<-dcb_sum_L2(dcb)
sum_l1_ab<-dcb_sum_L1(dcb)
time_end<-Sys.time()
sum_l2_ab
pre.data
L2_159
L2_309
L2_459
L2_609
time_end-time_start



cell<-c(
  20046,04,05,16,19,29,31,08,
  20047,03,11,12,15,23,27,05,
  20048,05,09,11,22,24,28,04,
  20049,06,12,13,20,25,31,09,
  20050,05,07,15,21,22,23,09
)
ab_m<-matrix(cell,ncol = 8,byrow = TRUE)

a1.pre<-ab_m[,2]
a2.pre<-ab_m[,3]
a3.pre<-ab_m[,4]
a4.pre<-ab_m[,5]
a5.pre<-ab_m[,6]
b1.pre<-ab_m[,7]
b2.pre<-ab_m[,8]


a1.res<-tail(dlt,dim(ab_m)[1])$a1
a2.res<-tail(dlt,dim(ab_m)[1])$a2
a3.res<-tail(dlt,dim(ab_m)[1])$a3
a4.res<-tail(dlt,dim(ab_m)[1])$a4
a5.res<-tail(dlt,dim(ab_m)[1])$a5
b1.res<-tail(dlt,dim(ab_m)[1])$b1
b2.res<-tail(dlt,dim(ab_m)[1])$b2

a1.hmm<-data.frame(a1.pre,a1.res)
a2.hmm<-data.frame(a2.pre,a2.res)
a3.hmm<-data.frame(a3.pre,a3.res)
a4.hmm<-data.frame(a4.pre,a4.res)
a5.hmm<-data.frame(a5.pre,a5.res)
b1.hmm<-data.frame(b1.pre,b1.res)
b2.hmm<-data.frame(b2.pre,b2.res)


#Training
trains.T.ab<-Matrix(ab_m[,2:8],sparse=T)
bst.a1<-xgboost(data = trains.T.ab,label = tail(dlt,dim(ab_m)[1])$a1,nrounds = 300,print_every_n = 300L)
bst.a2<-xgboost(data = trains.T.ab,label = tail(dlt,dim(ab_m)[1])$a2,nrounds = 300,print_every_n = 300L)
bst.a3<-xgboost(data = trains.T.ab,label = tail(dlt,dim(ab_m)[1])$a3,nrounds = 300,print_every_n = 300L)
bst.a4<-xgboost(data = trains.T.ab,label = tail(dlt,dim(ab_m)[1])$a4,nrounds = 300,print_every_n = 300L)
bst.a5<-xgboost(data = trains.T.ab,label = tail(dlt,dim(ab_m)[1])$a5,nrounds = 300,print_every_n = 300L)
bst.b1<-xgboost(data = trains.T.ab,label = tail(dlt,dim(ab_m)[1])$b1,nrounds = 300,print_every_n = 300L)
bst.b2<-xgboost(data = trains.T.ab,label = tail(dlt,dim(ab_m)[1])$b2,nrounds = 300,print_every_n = 300L)

#data preparation
pre.data<-dlt_sum_L2(tail(dlt,609))
pre.data<-c(sort(pre.data[1:5]),sort(pre.data[6:7]))

#predict
pre.T.data<-Matrix(pre.data,sparse=T)
testPredictions.a1 <- predict(object = bst.a1,newdata = t(pre.T.data))
testPredictions.a2 <- predict(object = bst.a2,newdata = t(pre.T.data))
testPredictions.a3 <- predict(object = bst.a3,newdata = t(pre.T.data))
testPredictions.a4 <- predict(object = bst.a4,newdata = t(pre.T.data))
testPredictions.a5 <- predict(object = bst.a5,newdata = t(pre.T.data))
testPredictions.b1 <- predict(object = bst.b1,newdata = t(pre.T.data))
testPredictions.b2 <- predict(object = bst.b2,newdata = t(pre.T.data))

sum_l3_ab<-c(round(tail(testPredictions.a1,1)),
             round(tail(testPredictions.a2,1)),
             round(tail(testPredictions.a3,1)),
             round(tail(testPredictions.a4,1)),
             round(tail(testPredictions.a5,1)),
             round(tail(testPredictions.b1,1)),
             round(tail(testPredictions.b2,1)))
L2_159<-dlt_sum_cum(tail(dlt,720),159)
L2_309<-dlt_sum_cum(tail(dlt,720),309)
L2_459<-dlt_sum_cum(tail(dlt,720),459)
L2_609<-dlt_sum_cum(tail(dlt,720),609)

sum_l3_ab<-c(sort(sum_l3_ab[1:5]),sort(sum_l3_ab[6:7]))  
sum_l2_ab<-dlt_sum_L2(dlt)
sum_l1_ab<-dlt_sum_L1(dlt)

time_end<-Sys.time()
time_dur<-time_end-time_start
round(time_dur)

sum_l2_ab
pre.data
sum_l3_ab

#sort(table(a1.hmm[which(a1.pre==sum_l3_ab[1]),]$a1.res))
#sort(table(a2.hmm[which(a2.pre==sum_l3_ab[2]),]$a2.res)) 
#sort(table(a3.hmm[which(a3.pre==sum_l3_ab[3]),]$a3.res))
#sort(table(a4.hmm[which(a4.pre==sum_l3_ab[4]),]$a4.res))
#sort(table(a5.hmm[which(a5.pre==sum_l3_ab[5]),]$a5.res))
#sort(table(b1.hmm[which(b1.pre==sum_l3_ab[6]),]$b1.res))
#sort(table(b2.hmm[which(b2.pre==sum_l3_ab[7]),]$b2.res))

L2_159
L2_309
L2_459
L2_609

sort(table(a1.hmm[which(a1.hmm$a1.pre==pre.data[1]),]$a1.res))
sort(table(a2.hmm[which(a2.hmm$a2.pre==pre.data[2]),]$a2.res))
sort(table(a3.hmm[which(a3.hmm$a3.pre==pre.data[3]),]$a3.res))
sort(table(a4.hmm[which(a4.hmm$a4.pre==pre.data[4]),]$a4.res))
sort(table(a5.hmm[which(a5.hmm$a5.pre==pre.data[5]),]$a5.res))
sort(table(b1.hmm[which(b1.hmm$b1.pre==pre.data[6]),]$b1.res))
sort(table(b2.hmm[which(b2.hmm$b2.pre==pre.data[7]),]$b2.res))
       
     
