dcb_L3<-function(num,number_of_core) {
  # source("element.R")
  library(xgboost)
  #read data
  m_record_l3<-as.matrix(read.csv(file = "dcb_data_l3.csv", header = FALSE))[-1,]
  m_r_ab_org<-as.matrix(read.csv(file = "dcb_data_l2.csv", header = FALSE))[-1,]
  # filter l2_data
  sum_num<-as.integer(m_r_ab_org[,1])
  m_r_ab_org<-m_r_ab_org[which(sum_num<=(num+1)),]
  m_r_ab<-m_r_ab_org[,-1]
  #get training row
  row_result<-dim(m_r_ab)[1]-1
  #get training data
  m_r_ab<-head(m_r_ab,row_result)
  m_r_a1<-m_r_ab[,01:10]
  m_r_a2<-m_r_ab[,11:20]
  m_r_a3<-m_r_ab[,21:30]
  m_r_a4<-m_r_ab[,31:40]
  m_r_a5<-m_r_ab[,41:50]
  m_r_a6<-m_r_ab[,51:60]
  m_r_b1<-m_r_ab[,61:70]
  trains.T.a1<-Matrix(m_r_a1,sparse=T)
  trains.T.a2<-Matrix(m_r_a2,sparse=T)
  trains.T.a3<-Matrix(m_r_a3,sparse=T)
  trains.T.a4<-Matrix(m_r_a4,sparse=T)
  trains.T.a5<-Matrix(m_r_a5,sparse=T)
  trains.T.a6<-Matrix(m_r_a6,sparse=T)
  trains.T.b1<-Matrix(m_r_b1,sparse=T)
  #get result data
  dcb_l3<-dcb[dcb$n<=num,]
  result<-tail(dcb_l3,row_result)
  #training
  bst.a1<-xgboost(data = trains.T.a1,label = result$a1,nrounds = 300,verbose=0,params = list(tree_method = t_m,nthread=number_of_core))
  bst.a2<-xgboost(data = trains.T.a2,label = result$a2,nrounds = 300,verbose=0,params = list(tree_method = t_m,nthread=number_of_core))
  bst.a3<-xgboost(data = trains.T.a3,label = result$a3,nrounds = 300,verbose=0,params = list(tree_method = t_m,nthread=number_of_core))
  bst.a4<-xgboost(data = trains.T.a4,label = result$a4,nrounds = 300,verbose=0,params = list(tree_method = t_m,nthread=number_of_core))
  bst.a5<-xgboost(data = trains.T.a5,label = result$a5,nrounds = 300,verbose=0,params = list(tree_method = t_m,nthread=number_of_core))
  bst.a6<-xgboost(data = trains.T.a6,label = result$a6,nrounds = 300,verbose=0,params = list(tree_method = t_m,nthread=number_of_core))
  bst.b1<-xgboost(data = trains.T.b1,label = result$b1,nrounds = 300,verbose=0,params = list(tree_method = t_m,nthread=number_of_core))
  
  sum_l2_dcb<-tail(m_r_ab,1)
  
  tests.T<-Matrix(as.matrix(m_sum_l2<-matrix(sum_l2_dcb,ncol = 10,byrow = TRUE)),sparse=T)
  testPredictions.a1 <- predict(object = bst.a1,newdata = t(tests.T[1,]))
  testPredictions.a2 <- predict(object = bst.a2,newdata = t(tests.T[2,]))
  testPredictions.a3 <- predict(object = bst.a3,newdata = t(tests.T[3,]))
  testPredictions.a4 <- predict(object = bst.a4,newdata = t(tests.T[4,]))
  testPredictions.a5 <- predict(object = bst.a5,newdata = t(tests.T[5,]))
  testPredictions.a6 <- predict(object = bst.a6,newdata = t(tests.T[6,]))
  testPredictions.b1 <- predict(object = bst.b1,newdata = t(tests.T[7,]))
  
  sum_L3_ab<-c(sort(c(round(testPredictions.a1),
                      round(testPredictions.a2),
                      round(testPredictions.a3),
                      round(testPredictions.a4),
                      round(testPredictions.a5),
                      round(testPredictions.a6)
  )),
  round(testPredictions.b1))
  
  
  
  sum_l3<-c(num+1,sum_L3_ab)
  print(c('L3:',sum_l3))
  m_r_ab_delta<-rbind(m_record_l3,sum_l3)
  write.csv(m_r_ab_delta, file = "dcb_data_l3.csv",row.names = FALSE)
  
  return(sum_l3)
  
}