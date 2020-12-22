source("dcb_sum_L3.R")
library(xgboost)

m_r_ab_org<-as.matrix(read.csv(file = "l3_ab.csv", header = FALSE))[-1,]
m_r_ab_org<-m_r_ab_org[,-1]
row_result<-dim(m_r_ab_org)[1]-1
m_r_ab<-head(m_r_ab,row_result)
result<-tail(dcb,row_result)

dcb<-c(
  20128,03,11,14,21,23,30,05
)
trains.T.ab<-Matrix(m_r_ab,sparse=T)
 
if (threads <= 8) {
  bst.a1<-xgboost(data = trains.T.ab,label = result$a1,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist'))
  bst.a2<-xgboost(data = trains.T.ab,label = result$a2,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist'))
  bst.a3<-xgboost(data = trains.T.ab,label = result$a3,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist'))
  bst.a4<-xgboost(data = trains.T.ab,label = result$a4,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist'))
  bst.a5<-xgboost(data = trains.T.ab,label = result$a5,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist'))
  bst.a6<-xgboost(data = trains.T.ab,label = result$a6,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist'))
  bst.b1<-xgboost(data = trains.T.ab,label = result$b1,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist'))
  
}else{
  bst.a1<-xgboost(data = trains.T.ab,label = result$a1,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist',nthread=number_of_core))
  bst.a2<-xgboost(data = trains.T.ab,label = result$a2,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist',nthread=number_of_core))
  bst.a3<-xgboost(data = trains.T.ab,label = result$a3,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist',nthread=number_of_core))
  bst.a4<-xgboost(data = trains.T.ab,label = result$a4,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist',nthread=number_of_core))
  bst.a5<-xgboost(data = trains.T.ab,label = result$a5,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist',nthread=number_of_core))
  bst.a6<-xgboost(data = trains.T.ab,label = result$a6,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist',nthread=number_of_core))
  bst.b1<-xgboost(data = trains.T.ab,label = result$b1,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist',nthread=number_of_core))
  
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

sum_l4_dcb<-c(max(dcb$n)+1,sum_l4_dcb)
sum_l4_dcb

