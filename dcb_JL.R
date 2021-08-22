dcb_JL<-function(num,number_of_core) {
  # source("element.R")
  library(xgboost)
  m_record_JL<-as.matrix(read.csv(file = "dcb_data_JL.csv", header = FALSE))[-1,]
  m_record_l3<-as.matrix(read.csv(file = "dcb_data_l3.csv", header = FALSE))[-1,]
  m_record_l4<-as.matrix(read.csv(file = "dcb_data_l4.csv", header = FALSE))[-1,]
  m_record_l5<-as.matrix(read.csv(file = "dcb_data_l5.csv", header = FALSE))[-1,]
  m_record_l6<-as.matrix(read.csv(file = "dcb_data_l6.csv", header = FALSE))[-1,]
  m_record_l7<-as.matrix(read.csv(file = "dcb_data_l7.csv", header = FALSE))[-1,]
  m_record_l8<-as.matrix(read.csv(file = "dcb_data_l8.csv", header = FALSE))[-1,]
  m_record_l9<-as.matrix(read.csv(file = "dcb_data_l9.csv", header = FALSE))[-1,]
  sum_num<-m_record_l9[,1]
  m_record_l3<-m_record_l3[which(sum_num<=(num+1)),]
  m_record_l4<-m_record_l4[which(sum_num<=(num+1)),]
  m_record_l5<-m_record_l5[which(sum_num<=(num+1)),]
  m_record_l6<-m_record_l6[which(sum_num<=(num+1)),]
  m_record_l7<-m_record_l7[which(sum_num<=(num+1)),]
  m_record_l8<-m_record_l8[which(sum_num<=(num+1)),]
  m_record_l9<-m_record_l9[which(sum_num<=(num+1)),]
  dcb_result<-dcb[dcb$n<=num,]
  
  num_row<-dim(m_record_l9)[1]
  dcb_result<-tail(dcb_result,(num_row-1))
  
  #training data
  m_record_l3<-tail(m_record_l3,num_row)[,-1]
  m_record_l4<-tail(m_record_l4,num_row)[,-1]
  m_record_l5<-tail(m_record_l5,num_row)[,-1]
  m_record_l6<-tail(m_record_l6,num_row)[,-1]
  m_record_l7<-tail(m_record_l7,num_row)[,-1]
  m_record_l8<-tail(m_record_l8,num_row)[,-1]
  m_record_l9<-tail(m_record_l9,num_row)[,-1]
  
  m_record_a1<-cbind(m_record_l3[,1],m_record_l4[,1],m_record_l5[,1],m_record_l6[,1],m_record_l7[,1],m_record_l8[,1],m_record_l9[,1])
  m_record_a2<-cbind(m_record_l3[,2],m_record_l4[,2],m_record_l5[,2],m_record_l6[,2],m_record_l7[,2],m_record_l8[,1],m_record_l9[,1])
  m_record_a3<-cbind(m_record_l3[,3],m_record_l4[,3],m_record_l5[,3],m_record_l6[,3],m_record_l7[,3],m_record_l8[,1],m_record_l9[,1])
  m_record_a4<-cbind(m_record_l3[,4],m_record_l4[,4],m_record_l5[,4],m_record_l6[,4],m_record_l7[,4],m_record_l8[,1],m_record_l9[,1])
  m_record_a5<-cbind(m_record_l3[,5],m_record_l4[,5],m_record_l5[,5],m_record_l6[,5],m_record_l7[,5],m_record_l8[,1],m_record_l9[,1])
  m_record_a6<-cbind(m_record_l3[,6],m_record_l4[,6],m_record_l5[,6],m_record_l6[,6],m_record_l7[,6],m_record_l8[,1],m_record_l9[,1])
  m_record_b1<-cbind(m_record_l3[,7],m_record_l4[,7],m_record_l5[,7],m_record_l6[,7],m_record_l7[,7],m_record_l8[,1],m_record_l9[,1])
  
  p_a1<-tail(m_record_a1,1)
  p_a2<-tail(m_record_a2,1)
  p_a3<-tail(m_record_a3,1)
  p_a4<-tail(m_record_a4,1)
  p_a5<-tail(m_record_a5,1)
  p_a6<-tail(m_record_a6,1)
  p_b1<-tail(m_record_b1,1)
  
  m_record_a1<-head(m_record_a1,(num_row-1))
  m_record_a2<-head(m_record_a2,(num_row-1))
  m_record_a3<-head(m_record_a3,(num_row-1))
  m_record_a4<-head(m_record_a4,(num_row-1))
  m_record_a5<-head(m_record_a5,(num_row-1))
  m_record_a6<-head(m_record_a6,(num_row-1))
  m_record_b1<-head(m_record_b1,(num_row-1))
  
  trains.T.a1<-Matrix(m_record_a1,sparse=T)
  trains.T.a2<-Matrix(m_record_a2,sparse=T)
  trains.T.a3<-Matrix(m_record_a3,sparse=T)
  trains.T.a4<-Matrix(m_record_a4,sparse=T)
  trains.T.a5<-Matrix(m_record_a5,sparse=T)
  trains.T.a6<-Matrix(m_record_a6,sparse=T)
  trains.T.b1<-Matrix(m_record_b1,sparse=T)
  
  bst.a1<-xgboost(data = trains.T.a1,label = dcb_result$a1,nrounds = 300,verbose=0,params = list(tree_method = t_m,nthread=number_of_core))
  bst.a2<-xgboost(data = trains.T.a2,label = dcb_result$a2,nrounds = 300,verbose=0,params = list(tree_method = t_m,nthread=number_of_core))
  bst.a3<-xgboost(data = trains.T.a3,label = dcb_result$a3,nrounds = 300,verbose=0,params = list(tree_method = t_m,nthread=number_of_core))
  bst.a4<-xgboost(data = trains.T.a4,label = dcb_result$a4,nrounds = 300,verbose=0,params = list(tree_method = t_m,nthread=number_of_core))
  bst.a5<-xgboost(data = trains.T.a5,label = dcb_result$a5,nrounds = 300,verbose=0,params = list(tree_method = t_m,nthread=number_of_core))
  bst.a6<-xgboost(data = trains.T.a6,label = dcb_result$a6,nrounds = 300,verbose=0,params = list(tree_method = t_m,nthread=number_of_core))
  bst.b1<-xgboost(data = trains.T.b1,label = dcb_result$b1,nrounds = 300,verbose=0,params = list(tree_method = t_m,nthread=number_of_core))
  
  tests.T.a1<-Matrix(p_a1,sparse=T)
  tests.T.a2<-Matrix(p_a2,sparse=T)
  tests.T.a3<-Matrix(p_a3,sparse=T)
  tests.T.a4<-Matrix(p_a4,sparse=T)
  tests.T.a5<-Matrix(p_a5,sparse=T)
  tests.T.a6<-Matrix(p_a6,sparse=T)
  tests.T.b1<-Matrix(p_b1,sparse=T)
  testPredictions.a1 <- predict(object = bst.a1,newdata = tests.T.a1)
  testPredictions.a2 <- predict(object = bst.a2,newdata = tests.T.a2)
  testPredictions.a3 <- predict(object = bst.a3,newdata = tests.T.a3)
  testPredictions.a4 <- predict(object = bst.a4,newdata = tests.T.a4)
  testPredictions.a5 <- predict(object = bst.a5,newdata = tests.T.a5)
  testPredictions.a6 <- predict(object = bst.a6,newdata = tests.T.a6)
  testPredictions.b1 <- predict(object = bst.b1,newdata = tests.T.b1)
  
  sum_JL_dcb<-c(sort(c(round(testPredictions.a1),
                       round(testPredictions.a2),
                       round(testPredictions.a3),
                       round(testPredictions.a4),
                       round(testPredictions.a5),
                       round(testPredictions.a6)
  )),
  round(testPredictions.b1))
  sum_JL_dcb<-c(max(dcb_result$n)+1,sum_JL_dcb)
  print(c('LJ:',sum_JL_dcb))
  m_r_ab_delta<-rbind(m_record_JL,sum_JL_dcb)
  write.csv(m_r_ab_delta, file = "dcb_data_JL.csv",row.names = FALSE)
}
