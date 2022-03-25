dcb_L3<-function(num,number_of_core) {
  # source("element.R")
  library(xgboost)
  #read data
  f_r_ab_org<-as.data.frame(read.csv(file = "dcb_data_l2.csv", header = FALSE))[-1,]
  f_r_ab_org<-transform(f_r_ab_org,
                        V1=as.integer(V1),V2=as.integer(V2),V3=as.integer(V3),V4=as.integer(V4),V5=as.integer(V5),V6=as.integer(V6),V7=as.integer(V7),V8=as.integer(V8),V9=as.integer(V9),V10=as.integer(V10),
                        V11=as.integer(V11),V12=as.integer(V12),V13=as.integer(V13),V14=as.integer(V14),V15=as.integer(V15),V16=as.integer(V16),V17=as.integer(V17),V18=as.integer(V18),V19=as.integer(V19),V20=as.integer(V20),
                        V21=as.integer(V21),V22=as.integer(V22),V23=as.integer(V23),V24=as.integer(V24),V25=as.integer(V25),V26=as.integer(V26),V27=as.integer(V27),V28=as.integer(V28),V29=as.integer(V29),V30=as.integer(V30),
                        V31=as.integer(V31),V32=as.integer(V32),V33=as.integer(V33),V34=as.integer(V34),V35=as.integer(V35),V36=as.integer(V36),V37=as.integer(V37),V38=as.integer(V38),V39=as.integer(V39),V40=as.integer(V40),
                        V41=as.integer(V41),V42=as.integer(V42),V43=as.integer(V43),V44=as.integer(V44),V45=as.integer(V45),V46=as.integer(V46),V47=as.integer(V47),V48=as.integer(V48),V49=as.integer(V49),V50=as.integer(V50),
                        V51=as.integer(V51),V52=as.integer(V52),V53=as.integer(V53),V54=as.integer(V54),V55=as.integer(V55),V56=as.integer(V56),V57=as.integer(V57),V58=as.integer(V58),V59=as.integer(V59),V60=as.integer(V60),
                        V61=as.integer(V61),V62=as.integer(V62),V63=as.integer(V63),V64=as.integer(V64),V65=as.integer(V65),V66=as.integer(V66),V67=as.integer(V67),V68=as.integer(V68),V69=as.integer(V69),V70=as.integer(V70),
                        V71=as.integer(V71))

  
  # filter l2_data
  f_r_ab_org<-f_r_ab_org[which(f_r_ab_org$V1<=(num+1)),]
  f_r_ab<-f_r_ab_org[,-1]
  #get training row
  row_result<-dim(f_r_ab)[1]-1
  #get training data
  f_r_ab<-head(f_r_ab,row_result)
  m_r_a1<-data.matrix(f_r_ab[,01:10])
  m_r_a2<-data.matrix(f_r_ab[,11:20])
  m_r_a3<-data.matrix(f_r_ab[,21:30])
  m_r_a4<-data.matrix(f_r_ab[,31:40])
  m_r_a5<-data.matrix(f_r_ab[,41:50])
  m_r_a6<-data.matrix(f_r_ab[,51:60])
  m_r_b1<-data.matrix(f_r_ab[,61:70])
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
  
  sum_l2_dcb<-tail(f_r_ab,1)
  m_sum_l2_dcb<-data.matrix(sum_l2_dcb)
  
  tests.T<-Matrix(as.matrix(m_sum_l2<-matrix(m_sum_l2_dcb,ncol = 10,byrow = TRUE)),sparse=T)
  testPredictions.a1 <- predict(object = bst.a1,newdata = t(tests.T[1,]))
  testPredictions.a2 <- predict(object = bst.a2,newdata = t(tests.T[2,]))
  testPredictions.a3 <- predict(object = bst.a3,newdata = t(tests.T[3,]))
  testPredictions.a4 <- predict(object = bst.a4,newdata = t(tests.T[4,]))
  testPredictions.a5 <- predict(object = bst.a5,newdata = t(tests.T[5,]))
  testPredictions.a6 <- predict(object = bst.a6,newdata = t(tests.T[6,]))
  testPredictions.b1 <- predict(object = bst.b1,newdata = t(tests.T[7,]))
  
  sum_L3_dcb<-c(sort(c(round(testPredictions.a1),
                      round(testPredictions.a2),
                      round(testPredictions.a3),
                      round(testPredictions.a4),
                      round(testPredictions.a5),
                      round(testPredictions.a6)
  )),
  round(testPredictions.b1))
  
  
  
  sum_L3_dcb<-c(num+1,sum_L3_dcb)
  # print(c('L3:',sum_l3))
  write.table(t(as.matrix(sum_L3_dcb,nrow(1))),file = "dcb_data_l3.csv",append = TRUE,col.names = FALSE,row.names = FALSE,quote=TRUE, sep=",")

  # return(sum_l3)
  return(c('L3:',sum_l3))
  
}