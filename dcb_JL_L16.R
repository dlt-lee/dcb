dcb_JL_L16<-function(num,number_of_core) {
  # source("element.R")
  library(xgboost)
  
  m_record_JL<-as.matrix(read.csv(file = "dcb_data_JL.csv", header = FALSE))[-1,]
  f_record_JL_L4<-as.data.frame(read.csv(file = "dcb_data_JL_L4.csv", header = FALSE))[-1,]
  f_record_JL_L5<-as.data.frame(read.csv(file = "dcb_data_JL_L5.csv", header = FALSE))[-1,]
  f_record_JL_L6<-as.data.frame(read.csv(file = "dcb_data_JL_L6.csv", header = FALSE))[-1,]
  f_record_JL_L7<-as.data.frame(read.csv(file = "dcb_data_JL_L7.csv", header = FALSE))[-1,]
  f_record_JL_L8<-as.data.frame(read.csv(file = "dcb_data_JL_L8.csv", header = FALSE))[-1,]
  f_record_JL_L9<-as.data.frame(read.csv(file = "dcb_data_JL_L9.csv", header = FALSE))[-1,]
  f_record_JL_L10<-as.data.frame(read.csv(file = "dcb_data_JL_L10.csv", header = FALSE))[-1,]
  f_record_JL_L11<-as.data.frame(read.csv(file = "dcb_data_JL_L11.csv", header = FALSE))[-1,]
  f_record_JL_L12<-as.data.frame(read.csv(file = "dcb_data_JL_L12.csv", header = FALSE))[-1,]
  f_record_JL_L13<-as.data.frame(read.csv(file = "dcb_data_JL_L13.csv", header = FALSE))[-1,]
  f_record_JL_L14<-as.data.frame(read.csv(file = "dcb_data_JL_L14.csv", header = FALSE))[-1,]
  f_record_JL_L15<-as.data.frame(read.csv(file = "dcb_data_JL_L15.csv", header = FALSE))[-1,]
  f_record_JL_L16<-as.data.frame(read.csv(file = "dcb_data_JL_L16.csv", header = FALSE))[-1,]
  f_record_JL_L17<-as.data.frame(read.csv(file = "dcb_data_JL_L17.csv", header = FALSE))[-1,]
  
  
  f_record_l3<-as.data.frame(read.csv(file = "dcb_data_l3.csv", header = FALSE))[-1,]
  f_record_l4<-as.data.frame(read.csv(file = "dcb_data_l4.csv", header = FALSE))[-1,]
  f_record_l5<-as.data.frame(read.csv(file = "dcb_data_l5.csv", header = FALSE))[-1,]
  f_record_l6<-as.data.frame(read.csv(file = "dcb_data_l6.csv", header = FALSE))[-1,]
  f_record_l7<-as.data.frame(read.csv(file = "dcb_data_l7.csv", header = FALSE))[-1,]
  f_record_l8<-as.data.frame(read.csv(file = "dcb_data_l8.csv", header = FALSE))[-1,]
  f_record_l9<-as.data.frame(read.csv(file = "dcb_data_l9.csv", header = FALSE))[-1,]
  f_record_l10<-as.data.frame(read.csv(file = "dcb_data_l10.csv", header = FALSE))[-1,]
  f_record_l11<-as.data.frame(read.csv(file = "dcb_data_l11.csv", header = FALSE))[-1,]
  f_record_l12<-as.data.frame(read.csv(file = "dcb_data_l12.csv", header = FALSE))[-1,]
  f_record_l13<-as.data.frame(read.csv(file = "dcb_data_l13.csv", header = FALSE))[-1,]
  f_record_l14<-as.data.frame(read.csv(file = "dcb_data_l14.csv", header = FALSE))[-1,]
  f_record_l15<-as.data.frame(read.csv(file = "dcb_data_l15.csv", header = FALSE))[-1,]
  f_record_l16<-as.data.frame(read.csv(file = "dcb_data_l16.csv", header = FALSE))[-1,]
  f_record_l17<-as.data.frame(read.csv(file = "dcb_data_l17.csv", header = FALSE))[-1,]
  f_record_l18<-as.data.frame(read.csv(file = "dcb_data_l18.csv", header = FALSE))[-1,]
  
  f_record_JL_L4$V1= as.integer(f_record_JL_L4$V1)
  f_record_JL_L5$V1= as.integer(f_record_JL_L5$V1)
  f_record_JL_L6$V1= as.integer(f_record_JL_L6$V1)
  f_record_JL_L7$V1= as.integer(f_record_JL_L7$V1)
  f_record_JL_L8$V1= as.integer(f_record_JL_L8$V1)
  f_record_JL_L9$V1= as.integer(f_record_JL_L9$V1)
  f_record_JL_L10$V1= as.integer(f_record_JL_L10$V1)
  f_record_JL_L11$V1= as.integer(f_record_JL_L11$V1)
  f_record_JL_L12$V1= as.integer(f_record_JL_L12$V1)
  f_record_JL_L13$V1= as.integer(f_record_JL_L13$V1)
  f_record_JL_L14$V1= as.integer(f_record_JL_L14$V1)
  f_record_JL_L15$V1= as.integer(f_record_JL_L15$V1)
  f_record_JL_L16$V1= as.integer(f_record_JL_L16$V1)
  f_record_JL_L17$V1= as.integer(f_record_JL_L17$V1)
  
  f_record_l3$V1=as.integer(f_record_l3$V1)
  f_record_l4$V1=as.integer(f_record_l4$V1)
  f_record_l5$V1=as.integer(f_record_l5$V1)
  f_record_l6$V1=as.integer(f_record_l6$V1)
  f_record_l7$V1=as.integer(f_record_l7$V1)
  f_record_l8$V1=as.integer(f_record_l8$V1)
  f_record_l9$V1=as.integer(f_record_l9$V1)
  f_record_l10$V1=as.integer(f_record_l10$V1)
  f_record_l11$V1=as.integer(f_record_l11$V1)
  f_record_l12$V1=as.integer(f_record_l12$V1)
  f_record_l13$V1=as.integer(f_record_l13$V1)
  f_record_l14$V1=as.integer(f_record_l14$V1)
  f_record_l15$V1=as.integer(f_record_l15$V1)
  f_record_l16$V1=as.integer(f_record_l16$V1)
  f_record_l17$V1=as.integer(f_record_l17$V1)
  f_record_l18$V1=as.integer(f_record_l18$V1)
  
  m_record_JL_L4<-as.matrix(f_record_JL_L4[f_record_JL_L4$V1<=(num+1),])[,-1]
  m_record_JL_L5<-as.matrix(f_record_JL_L5[f_record_JL_L5$V1<=(num+1),])[,-1]
  m_record_JL_L6<-as.matrix(f_record_JL_L6[f_record_JL_L6$V1<=(num+1),])[,-1]
  m_record_JL_L7<-as.matrix(f_record_JL_L7[f_record_JL_L7$V1<=(num+1),])[,-1]
  m_record_JL_L8<-as.matrix(f_record_JL_L8[f_record_JL_L8$V1<=(num+1),])[,-1]
  m_record_JL_L9<-as.matrix(f_record_JL_L9[f_record_JL_L9$V1<=(num+1),])[,-1]
  m_record_JL_L10<-as.matrix(f_record_JL_L10[f_record_JL_L10$V1<=(num+1),])[,-1]
  m_record_JL_L11<-as.matrix(f_record_JL_L11[f_record_JL_L11$V1<=(num+1),])[,-1]
  m_record_JL_L12<-as.matrix(f_record_JL_L12[f_record_JL_L12$V1<=(num+1),])[,-1]
  m_record_JL_L13<-as.matrix(f_record_JL_L13[f_record_JL_L13$V1<=(num+1),])[,-1]
  m_record_JL_L14<-as.matrix(f_record_JL_L14[f_record_JL_L14$V1<=(num+1),])[,-1]
  m_record_JL_L15<-as.matrix(f_record_JL_L15[f_record_JL_L15$V1<=(num+1),])[,-1]
  m_record_JL_L16<-as.matrix(f_record_JL_L16[f_record_JL_L16$V1<=(num+1),])[,-1]
  m_record_JL_L17<-as.matrix(f_record_JL_L17[f_record_JL_L17$V1<=(num+1),])[,-1]
  
  m_record_l3<-as.matrix(f_record_l3[f_record_l3$V1<=(num+1),])[,-1]
  m_record_l4<-as.matrix(f_record_l4[f_record_l4$V1<=(num+1),])[,-1]
  m_record_l5<-as.matrix(f_record_l5[f_record_l5$V1<=(num+1),])[,-1]
  m_record_l6<-as.matrix(f_record_l6[f_record_l6$V1<=(num+1),])[,-1]
  m_record_l7<-as.matrix(f_record_l7[f_record_l7$V1<=(num+1),])[,-1]
  m_record_l8<-as.matrix(f_record_l8[f_record_l8$V1<=(num+1),])[,-1]
  m_record_l9<-as.matrix(f_record_l9[f_record_l9$V1<=(num+1),])[,-1]
  m_record_l10<-as.matrix(f_record_l10[f_record_l10$V1<=(num+1),])[,-1]
  m_record_l11<-as.matrix(f_record_l11[f_record_l11$V1<=(num+1),])[,-1]
  m_record_l12<-as.matrix(f_record_l12[f_record_l12$V1<=(num+1),])[,-1]
  m_record_l13<-as.matrix(f_record_l13[f_record_l13$V1<=(num+1),])[,-1]
  m_record_l14<-as.matrix(f_record_l14[f_record_l14$V1<=(num+1),])[,-1]
  m_record_l15<-as.matrix(f_record_l15[f_record_l15$V1<=(num+1),])[,-1]
  m_record_l16<-as.matrix(f_record_l16[f_record_l16$V1<=(num+1),])[,-1]
  m_record_l17<-as.matrix(f_record_l17[f_record_l17$V1<=(num+1),])[,-1]
  m_record_l18<-as.matrix(f_record_l18[f_record_l18$V1<=(num+1),])[,-1]
  
  dcb_result<-dcb[dcb$n<=num,]
  
  # num_row<-dim(m_record_l18)[1]
  num_row<-dim(m_record_l16)[1]
  dcb_result<-tail(dcb_result,(num_row-1))
  
  #training data
  m_record_JL_L4<-tail(m_record_JL_L4,num_row)
  m_record_JL_L5<-tail(m_record_JL_L5,num_row)
  m_record_JL_L6<-tail(m_record_JL_L6,num_row)
  m_record_JL_L7<-tail(m_record_JL_L7,num_row)
  m_record_JL_L8<-tail(m_record_JL_L8,num_row)
  m_record_JL_L9<-tail(m_record_JL_L9,num_row)
  m_record_JL_L10<-tail(m_record_JL_L10,num_row)
  m_record_JL_L11<-tail(m_record_JL_L11,num_row)
  m_record_JL_L12<-tail(m_record_JL_L12,num_row)
  m_record_JL_L13<-tail(m_record_JL_L13,num_row)
  m_record_JL_L14<-tail(m_record_JL_L14,num_row)
  m_record_JL_L15<-tail(m_record_JL_L15,num_row)
  m_record_JL_L16<-tail(m_record_JL_L16,num_row)
  m_record_JL_L17<-tail(m_record_JL_L17,num_row)
  
  m_record_l3<-tail(m_record_l3,num_row)
  m_record_l4<-tail(m_record_l4,num_row)
  m_record_l5<-tail(m_record_l5,num_row)
  m_record_l6<-tail(m_record_l6,num_row)
  m_record_l7<-tail(m_record_l7,num_row)
  m_record_l8<-tail(m_record_l8,num_row)
  m_record_l9<-tail(m_record_l9,num_row)
  m_record_l10<-tail(m_record_l10,num_row)
  m_record_l11<-tail(m_record_l11,num_row)
  m_record_l12<-tail(m_record_l12,num_row)
  m_record_l13<-tail(m_record_l13,num_row)
  m_record_l14<-tail(m_record_l14,num_row)
  m_record_l15<-tail(m_record_l15,num_row)
  m_record_l16<-tail(m_record_l16,num_row)
  m_record_l17<-tail(m_record_l17,num_row)
  m_record_l18<-tail(m_record_l18,num_row)
  
  m_record_a1<-cbind(m_record_l3[,1],m_record_l4[,1],m_record_l5[,1],m_record_l6[,1],m_record_l7[,1],m_record_l8[,1],m_record_l9[,1],m_record_l10[,1],
                     m_record_l11[,1],m_record_l12[,1],m_record_l13[,1],m_record_l14[,1],m_record_l15[,1],m_record_l16[,1],
                     m_record_JL_L4[,1],m_record_JL_L5[,1],m_record_JL_L6[,1],m_record_JL_L7[,1],m_record_JL_L8[,1],m_record_JL_L9[,1],m_record_JL_L10[,1],
                     m_record_JL_L11[,1],m_record_JL_L12[,1],m_record_JL_L13[,1],m_record_JL_L14[,1],m_record_JL_L15[,1])
  
  m_record_a2<-cbind(m_record_l3[,2],m_record_l4[,2],m_record_l5[,2],m_record_l6[,2],m_record_l7[,2],m_record_l8[,2],m_record_l9[,2],m_record_l10[,2],
                     m_record_l11[,2],m_record_l12[,2],m_record_l13[,2],m_record_l14[,2],m_record_l15[,2],m_record_l16[,2],
                     m_record_JL_L4[,2],m_record_JL_L5[,2],m_record_JL_L6[,2],m_record_JL_L7[,2],m_record_JL_L8[,2],m_record_JL_L9[,2],m_record_JL_L10[,2],
                     m_record_JL_L11[,2],m_record_JL_L12[,2],m_record_JL_L13[,2],m_record_JL_L14[,2],m_record_JL_L15[,2])
  
  m_record_a3<-cbind(m_record_l3[,3],m_record_l4[,3],m_record_l5[,3],m_record_l6[,3],m_record_l7[,3],m_record_l8[,3],m_record_l9[,3],m_record_l10[,3],
                     m_record_l11[,3],m_record_l12[,3],m_record_l13[,3],m_record_l14[,3],m_record_l15[,3],m_record_l16[,3],
                     m_record_JL_L4[,3],m_record_JL_L5[,3],m_record_JL_L6[,3],m_record_JL_L7[,3],m_record_JL_L8[,3],m_record_JL_L9[,3],m_record_JL_L10[,3],
                     m_record_JL_L11[,1],m_record_JL_L12[,3],m_record_JL_L13[,3],m_record_JL_L14[,3],m_record_JL_L15[,3])
  
  m_record_a4<-cbind(m_record_l3[,4],m_record_l4[,4],m_record_l5[,4],m_record_l6[,4],m_record_l7[,4],m_record_l8[,4],m_record_l9[,4],m_record_l10[,4],
                     m_record_l11[,4],m_record_l12[,4],m_record_l13[,4],m_record_l14[,4],m_record_l15[,4],m_record_l16[,4],
                     m_record_JL_L4[,4],m_record_JL_L5[,4],m_record_JL_L6[,4],m_record_JL_L7[,4],m_record_JL_L8[,4],m_record_JL_L9[,4],m_record_JL_L10[,4],
                     m_record_JL_L11[,1],m_record_JL_L12[,4],m_record_JL_L13[,4],m_record_JL_L14[,4],m_record_JL_L15[,4])
  
  m_record_a5<-cbind(m_record_l3[,5],m_record_l4[,5],m_record_l5[,5],m_record_l6[,5],m_record_l7[,5],m_record_l8[,5],m_record_l9[,5],m_record_l10[,5],
                     m_record_l11[,5],m_record_l12[,5],m_record_l13[,5],m_record_l14[,5],m_record_l15[,5],m_record_l16[,5],
                     m_record_JL_L4[,5],m_record_JL_L5[,5],m_record_JL_L6[,5],m_record_JL_L7[,5],m_record_JL_L8[,5],m_record_JL_L9[,5],m_record_JL_L10[,5],
                     m_record_JL_L11[,1],m_record_JL_L12[,5],m_record_JL_L13[,5],m_record_JL_L14[,5],m_record_JL_L15[,5])
  
  m_record_a6<-cbind(m_record_l3[,6],m_record_l4[,6],m_record_l5[,6],m_record_l6[,6],m_record_l7[,6],m_record_l8[,6],m_record_l9[,6],m_record_l10[,6],
                     m_record_l11[,6],m_record_l12[,6],m_record_l13[,6],m_record_l14[,6],m_record_l15[,6],m_record_l16[,6],
                     m_record_JL_L4[,6],m_record_JL_L5[,6],m_record_JL_L6[,6],m_record_JL_L7[,6],m_record_JL_L8[,6],m_record_JL_L9[,6],m_record_JL_L10[,6],
                     m_record_JL_L11[,1],m_record_JL_L12[,6],m_record_JL_L13[,6],m_record_JL_L14[,6],m_record_JL_L15[,6])
  
  m_record_b1<-cbind(m_record_l3[,7],m_record_l4[,7],m_record_l5[,7],m_record_l6[,7],m_record_l7[,7],m_record_l8[,7],m_record_l9[,7],m_record_l10[,7],
                     m_record_l11[,7],m_record_l12[,7],m_record_l13[,7],m_record_l14[,7],m_record_l15[,7],m_record_l16[,7],
                     m_record_JL_L4[,7],m_record_JL_L5[,7],m_record_JL_L6[,7],m_record_JL_L7[,7],m_record_JL_L8[,7],m_record_JL_L9[,7],m_record_JL_L10[,7],
                     m_record_JL_L11[,7],m_record_JL_L12[,7],m_record_JL_L13[,7],m_record_JL_L14[,7],m_record_JL_L15[,7])
  
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
  sum_JL_dcb<-c(num+1,sum_JL_dcb)
  print(c('LJ_L16:',sum_JL_dcb))
  m_record_JL<-as.data.frame(read.csv(file = "dcb_data_JL_L16.csv", header = FALSE))[-1,]
  m_r_ab_delta<-rbind(m_record_JL,sum_JL_dcb)
  write.csv(m_r_ab_delta, file = "dcb_data_JL_L16.csv",row.names = FALSE)
}
