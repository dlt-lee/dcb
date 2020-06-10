#dcb_sum_L2<-function(data_org) {
  library('xgboost')
  source("dcb_sum_L1.R")
  data_org<-dcb
  rows<-dim(data_org)[1]
  line<-rows%%3 +15
  j<-1
  a1_temp<-c(0,0,0,0,0,0,0,0)
  a2_temp<-c(0,0,0,0,0,0,0,0)
  a3_temp<-c(0,0,0,0,0,0,0,0)
  a4_temp<-c(0,0,0,0,0,0,0,0)
  a5_temp<-c(0,0,0,0,0,0,0,0)
  a6_temp<-c(0,0,0,0,0,0,0,0)
  b1_temp<-c(0,0,0,0,0,0,0,0)
  res_temp<-c(0,0,0,0,0,0,0)
  
  for (i in 1:rows) {
    data<-data_org[j:line,]
    temp<-dcb_sum_L1(data)
    a1_temp<-c(a1_temp,temp$a1)
    a2_temp<-c(a2_temp,temp$a2)
    a3_temp<-c(a3_temp,temp$a3)
    a4_temp<-c(a4_temp,temp$a4)
    a5_temp<-c(a5_temp,temp$a5)
    a6_temp<-c(a6_temp,temp$a6)
    b1_temp<-c(b1_temp,temp$b1)
    res_temp<-c(res_temp,data_org[line+1,2:8])
    j<-j+3
    line<-line+3
    if (line>=rows) {
      break
    }
    
  }
  
  print(line)
  
  a1_m<-matrix(a1_temp,ncol = 8,byrow = TRUE)[-1,]
  a2_m<-matrix(a2_temp,ncol = 8,byrow = TRUE)[-1,]
  a3_m<-matrix(a3_temp,ncol = 8,byrow = TRUE)[-1,]
  a4_m<-matrix(a4_temp,ncol = 8,byrow = TRUE)[-1,]
  a5_m<-matrix(a5_temp,ncol = 8,byrow = TRUE)[-1,]
  a6_m<-matrix(a6_temp,ncol = 8,byrow = TRUE)[-1,]
  b1_m<-matrix(b1_temp,ncol = 8,byrow = TRUE)[-1,]
  res_m<-matrix(res_temp,ncol = 7,byrow = TRUE)[-1,]
  
  trains.T.a1<-Matrix(a1_m,sparse=T)
  trains.T.a2<-Matrix(a2_m,sparse=T)
  trains.T.a3<-Matrix(a3_m,sparse=T)
  trains.T.a4<-Matrix(a4_m,sparse=T)
  trains.T.a5<-Matrix(a5_m,sparse=T)
  trains.T.a6<-Matrix(a6_m,sparse=T)
  trains.T.b1<-Matrix(b1_m,sparse=T)
  
  bst.a1<-xgboost(data = trains.T.a1,label = res_m[,1],nrounds = 300,print_every_n = 300L)
  bst.a2<-xgboost(data = trains.T.a2,label = res_m[,2],nrounds = 300,print_every_n = 300L)
  bst.a3<-xgboost(data = trains.T.a3,label = res_m[,3],nrounds = 300,print_every_n = 300L)
  bst.a4<-xgboost(data = trains.T.a4,label = res_m[,4],nrounds = 300,print_every_n = 300L)
  bst.a5<-xgboost(data = trains.T.a5,label = res_m[,5],nrounds = 300,print_every_n = 300L)
  bst.a6<-xgboost(data = trains.T.a6,label = res_m[,6],nrounds = 300,print_every_n = 300L)
  bst.b1<-xgboost(data = trains.T.b1,label = res_m[,7],nrounds = 300,print_every_n = 300L)
  
  
  #prediect
  tests<-dcb_sum_L1(tail(data_org,15))
  tests.T<-Matrix(as.matrix(tests),sparse=T)
  testPredictions.a1 <- predict(object = bst.a1,newdata = t(tests.T[,1]))
  testPredictions.a2 <- predict(object = bst.a2,newdata = t(tests.T[,2]))
  testPredictions.a3 <- predict(object = bst.a3,newdata = t(tests.T[,3]))
  testPredictions.a4 <- predict(object = bst.a4,newdata = t(tests.T[,4]))
  testPredictions.a5 <- predict(object = bst.a5,newdata = t(tests.T[,5]))
  testPredictions.a6 <- predict(object = bst.a6,newdata = t(tests.T[,6]))
  testPredictions.b1 <- predict(object = bst.b1,newdata = t(tests.T[,7]))
  
  
  pre_data<-c(round(tail(testPredictions.a1,1)),
              round(tail(testPredictions.a2,1)),
              round(tail(testPredictions.a3,1)),
              round(tail(testPredictions.a4,1)),
              round(tail(testPredictions.a5,1)),
              round(tail(testPredictions.a6,1)),
              round(tail(testPredictions.b1,1)))
  pre_data<-c(sort(pre_data[1:6]),sort(pre_data[7]))
  return(pre_data)
  
  
  
#}

 

