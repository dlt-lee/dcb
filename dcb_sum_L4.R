source("element.R")
library(xgboost)
threads=detectCores()
number_of_core=threads/2

time_start<-Sys.time()
source("dcb_sum_L3.R")


m_r_ab_org<-as.matrix(read.csv(file = "l3_ab.csv", header = FALSE))[-1,]
m_r_ab_org<-m_r_ab_org[,-1]
row_result<-dim(m_r_ab_org)[1]-1
m_r_ab<-head(m_r_ab_org,row_result)
result<-tail(dcb,row_result)

m_record_l4<-c(
  20128,03,11,14,21,23,30,05,
  20129,02,11,13,21,28,30,06,
  20130,03,07,16,20,21,27,07,
  20131,02,08,12,20,26,26,08,
  20132,10,11,12,20,24,32,10,
  20133,02,03,13,18,24,28,07,
  20134,04,07,08,15,21,27,09,
  21001,04,13,20,23,28,31,13,
  21002,04,05,09,14,24,30,08,
  21003,03,10,19,26,29,33,11,
  21004,09,14,22,25,27,30,06,
  21005,05,08,14,17,25,31,13,
  21006,03,10,11,16,26,29,14
  
)

trains.T.ab<-Matrix(m_r_ab,sparse=T)
 
if (threads <= 8) {
  bst.a1<-xgboost(data = trains.T.ab,label = result$a1,nrounds = 300,verbose=0,params = list(tree_method = 'hist'))
  bst.a2<-xgboost(data = trains.T.ab,label = result$a2,nrounds = 300,verbose=0,params = list(tree_method = 'hist'))
  bst.a3<-xgboost(data = trains.T.ab,label = result$a3,nrounds = 300,verbose=0,params = list(tree_method = 'hist'))
  bst.a4<-xgboost(data = trains.T.ab,label = result$a4,nrounds = 300,verbose=0,params = list(tree_method = 'hist'))
  bst.a5<-xgboost(data = trains.T.ab,label = result$a5,nrounds = 300,verbose=0,params = list(tree_method = 'hist'))
  bst.a6<-xgboost(data = trains.T.ab,label = result$a6,nrounds = 300,verbose=0,params = list(tree_method = 'hist'))
  bst.b1<-xgboost(data = trains.T.ab,label = result$b1,nrounds = 300,verbose=0,params = list(tree_method = 'hist'))
  
}else{
  bst.a1<-xgboost(data = trains.T.ab,label = result$a1,nrounds = 300,verbose=0,params = list(tree_method = 'hist',nthread=number_of_core))
  bst.a2<-xgboost(data = trains.T.ab,label = result$a2,nrounds = 300,verbose=0,params = list(tree_method = 'hist',nthread=number_of_core))
  bst.a3<-xgboost(data = trains.T.ab,label = result$a3,nrounds = 300,verbose=0,params = list(tree_method = 'hist',nthread=number_of_core))
  bst.a4<-xgboost(data = trains.T.ab,label = result$a4,nrounds = 300,verbose=0,params = list(tree_method = 'hist',nthread=number_of_core))
  bst.a5<-xgboost(data = trains.T.ab,label = result$a5,nrounds = 300,verbose=0,params = list(tree_method = 'hist',nthread=number_of_core))
  bst.a6<-xgboost(data = trains.T.ab,label = result$a6,nrounds = 300,verbose=0,params = list(tree_method = 'hist',nthread=number_of_core))
  bst.b1<-xgboost(data = trains.T.ab,label = result$b1,nrounds = 300,verbose=0,params = list(tree_method = 'hist',nthread=number_of_core))
  
}

tests.T.ab<-Matrix(tail(m_r_ab_org,1),sparse=T)
testPredictions.a1 <- predict(object = bst.a1,newdata = tests.T.ab)
testPredictions.a2 <- predict(object = bst.a2,newdata = tests.T.ab)
testPredictions.a3 <- predict(object = bst.a3,newdata = tests.T.ab)
testPredictions.a4 <- predict(object = bst.a4,newdata = tests.T.ab)
testPredictions.a5 <- predict(object = bst.a5,newdata = tests.T.ab)
testPredictions.a6 <- predict(object = bst.a6,newdata = tests.T.ab)
testPredictions.b1 <- predict(object = bst.b1,newdata = tests.T.ab)

sum_l4_dcb<-c(sort(c(round(testPredictions.a1),
                    round(testPredictions.a2),
                    round(testPredictions.a3),
                    round(testPredictions.a4),
                    round(testPredictions.a5),
                    round(testPredictions.a6)
)),
round(testPredictions.b1))

time_end<-Sys.time()
time_dur<-time_end-time_start
time_dur

sum_l4_dcb<-c(max(dcb$n)+1,sum_l4_dcb)
sum_l4_dcb

