dcb_L18<-function(num,number_of_core) {
  #source("element.R")
  library(xgboost)
  #read data
  m_r_ab_org<-as.matrix(read.csv(file = "dcb_data_l17.csv", header = FALSE))[-1,]
  m_r_ab_org<-as.integer(m_r_ab_org)
  # filter l5_data
  sum_num<-as.integer(m_r_ab_org[,1])
  m_r_ab_org<-m_r_ab_org[which(sum_num<=(num+1)),]
  m_r_ab_org<-m_r_ab_org[,-1]
  #get training row
  row_result<-dim(m_r_ab_org)[1]-1
  #get training data
  m_r_ab<-head(m_r_ab_org,row_result)
  #get result data
  dcb<-dcb[dcb$n<=num,]
  result<-tail(dcb,row_result)
  
  
  trains.T.ab<-Matrix(m_r_ab,sparse=T)
  
  
  bst.a1<-xgboost(data = trains.T.ab,label = result$a1,nrounds = 300,verbose=0,params = list(tree_method = t_m,nthread=number_of_core))
  bst.a2<-xgboost(data = trains.T.ab,label = result$a2,nrounds = 300,verbose=0,params = list(tree_method = t_m,nthread=number_of_core))
  bst.a3<-xgboost(data = trains.T.ab,label = result$a3,nrounds = 300,verbose=0,params = list(tree_method = t_m,nthread=number_of_core))
  bst.a4<-xgboost(data = trains.T.ab,label = result$a4,nrounds = 300,verbose=0,params = list(tree_method = t_m,nthread=number_of_core))
  bst.a5<-xgboost(data = trains.T.ab,label = result$a5,nrounds = 300,verbose=0,params = list(tree_method = t_m,nthread=number_of_core))
  bst.a6<-xgboost(data = trains.T.ab,label = result$a6,nrounds = 300,verbose=0,params = list(tree_method = t_m,nthread=number_of_core))
  bst.b1<-xgboost(data = trains.T.ab,label = result$b1,nrounds = 300,verbose=0,params = list(tree_method = t_m,nthread=number_of_core))
  
  tests.T.ab<-Matrix(tail(m_r_ab_org,1),sparse=T)
  testPredictions.a1 <- predict(object = bst.a1,newdata = tests.T.ab)
  testPredictions.a2 <- predict(object = bst.a2,newdata = tests.T.ab)
  testPredictions.a3 <- predict(object = bst.a3,newdata = tests.T.ab)
  testPredictions.a4 <- predict(object = bst.a4,newdata = tests.T.ab)
  testPredictions.a5 <- predict(object = bst.a5,newdata = tests.T.ab)
  testPredictions.a6 <- predict(object = bst.a6,newdata = tests.T.ab)
  testPredictions.b1 <- predict(object = bst.b1,newdata = tests.T.ab)
  
  sum_l18_dcb<-c(sort(c(round(testPredictions.a1),
                       round(testPredictions.a2),
                       round(testPredictions.a3),
                       round(testPredictions.a4),
                       round(testPredictions.a5),
                       round(testPredictions.a6)
  )),
  round(testPredictions.b1))
  
  
  
  sum_l18_dcb<-c(max(dcb$n)+1,sum_l18_dcb)
  # print(c('L18:',sum_l18_dcb))
  write.table(t(as.matrix(sum_l18_dcb,nrow(1))),file = "dcb_data_l18.csv",append = TRUE,col.names = FALSE,row.names = FALSE,quote=TRUE, sep=",")

  # return(sum_l18_dcb)
  return(c('L18:',sum_l18_dcb))
}
