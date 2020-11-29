library(HMM)
library(depmixS4)
library(matlab)
library(quantmod)
library(xgboost)
source("element.R")
source("dcb_sum_L2.R")
source("dcb_sum_L1.R")
source("dcb_sum_cum.R")
threads=detectCores()
number_of_core=threads/2

record_ab<-c(
  20070,07,11,15,20,24,28,11,
  20071,03,06,13,19,22,27,11,
  20072,04,06,14,21,27,30,05,
  20073,08,11,13,19,27,29,04,
  20074,03,09,11,18,24,26,05,
  20075,02,08,11,20,21,29,04,
  20076,02,06,15,19,22,28,07,
  20077,05,07,16,17,22,29,06,
  20078,05,14,15,17,23,31,04,
  20079,04,12,13,14,27,28,05,
  20080,06,11,17,21,25,31,02,
  20081,02,10,13,14,22,30,07,
  20082,06,11,11,18,20,30,10,
  20083,04,11,12,12,30,32,04,
  20084,02,08,13,19,25,26,10,
  20085,02,14,14,20,25,29,03,
  20086,05,07,11,20,23,25,08,
  20087,07,10,18,20,25,31,09,
  20088,09,10,11,13,22,31,11,
  20089,06,07,09,17,26,31,09,
  20090,04,13,21,21,25,25,11,
  20091,04,14,15,18,22,24,07,
  20092,05,12,17,20,20,21,08,
  20093,03,10,20,23,23,24,09,
  20094,09,09,11,13,20,24,10,
  20095,08,12,16,17,22,30,12,
  20096,05,06,09,16,24,25,11,
  20097,02,07,18,21,25,29,04,
  20098,01,10,14,15,25,30,07,
  20099,02,10,13,22,25,30,11,
  20100,03,11,17,20,21,29,11,
  20101,05,12,13,21,22,26,04,
  20102,05,06,16,17,23,32,07,
  20103,06,10,17,24,28,29,05,
  20104,03,11,14,24,25,31,13,
  20105,04,05,10,22,25,31,13,
  20106,04,10,14,21,27,31,09,
  20107,04,12,18,22,24,28,06,
  20108,03,12,14,15,18,26,11
)

time_start_dcb<-Sys.time()

unit_dcb<-floor(dim(dcb)[1]/9/3)*3
L2_1_dcb<-dcb_sum_cum(dcb,unit_dcb*1)
L2_2_dcb<-dcb_sum_cum(dcb,unit_dcb*2)
L2_3_dcb<-dcb_sum_cum(dcb,unit_dcb*3)
L2_4_dcb<-dcb_sum_cum(dcb,unit_dcb*4)
L2_5_dcb<-dcb_sum_cum(dcb,unit_dcb*5)
L2_6_dcb<-dcb_sum_cum(dcb,unit_dcb*6)
L2_7_dcb<-dcb_sum_cum(dcb,unit_dcb*7)
L2_8_dcb<-dcb_sum_cum(dcb,unit_dcb*8)

sum_l2_dcb_3<-dcb_sum_L2(dcb,3)
sum_l2_dcb_6<-dcb_sum_L2(dcb,6)


sum_l2_dcb<-c(sum_l2_dcb_3[1],L2_1_dcb[1],L2_2_dcb[1],L2_3_dcb[1],L2_4_dcb[1],L2_5_dcb[1],L2_6_dcb[1],L2_7_dcb[1],L2_8_dcb[1],sum_l2_dcb_6[1],
              sum_l2_dcb_3[2],L2_1_dcb[2],L2_2_dcb[2],L2_3_dcb[2],L2_4_dcb[2],L2_5_dcb[2],L2_6_dcb[2],L2_7_dcb[2],L2_8_dcb[2],sum_l2_dcb_6[2],
              sum_l2_dcb_3[3],L2_1_dcb[3],L2_2_dcb[3],L2_3_dcb[3],L2_4_dcb[3],L2_5_dcb[3],L2_6_dcb[3],L2_7_dcb[3],L2_8_dcb[3],sum_l2_dcb_6[3],
              sum_l2_dcb_3[4],L2_1_dcb[4],L2_2_dcb[4],L2_3_dcb[4],L2_4_dcb[4],L2_5_dcb[4],L2_6_dcb[4],L2_7_dcb[4],L2_8_dcb[4],sum_l2_dcb_6[4],
              sum_l2_dcb_3[5],L2_1_dcb[5],L2_2_dcb[5],L2_3_dcb[5],L2_4_dcb[5],L2_5_dcb[5],L2_6_dcb[5],L2_7_dcb[5],L2_8_dcb[5],sum_l2_dcb_6[5],
              sum_l2_dcb_3[6],L2_1_dcb[6],L2_2_dcb[6],L2_3_dcb[6],L2_4_dcb[6],L2_5_dcb[6],L2_6_dcb[6],L2_7_dcb[6],L2_8_dcb[6],sum_l2_dcb_6[6],
              sum_l2_dcb_3[7],L2_1_dcb[7],L2_2_dcb[7],L2_3_dcb[7],L2_4_dcb[7],L2_5_dcb[7],L2_6_dcb[7],L2_7_dcb[7],L2_8_dcb[7],sum_l2_dcb_6[7])
m_sum_l2_dcb<-matrix(sum_l2_dcb,ncol = 10,byrow = TRUE)

m_r_ab_org<-as.matrix(read.csv(file = "l2_ab.csv", header = FALSE))[-1,]
m_r_ab<-m_r_ab_org[,-1]
m_r_a1<-m_r_ab[,01:10]
m_r_a2<-m_r_ab[,11:20]
m_r_a3<-m_r_ab[,21:30]
m_r_a4<-m_r_ab[,31:40]
m_r_a5<-m_r_ab[,41:50]
m_r_a6<-m_r_ab[,51:60]
m_r_b1<-m_r_ab[,61:70]
row_result<-dim(m_r_ab)[1]
result<-tail(dcb,row_result)

trains.T.a1<-Matrix(m_r_a1,sparse=T)
trains.T.a2<-Matrix(m_r_a2,sparse=T)
trains.T.a3<-Matrix(m_r_a3,sparse=T)
trains.T.a4<-Matrix(m_r_a4,sparse=T)
trains.T.a5<-Matrix(m_r_a5,sparse=T)
trains.T.a6<-Matrix(m_r_a6,sparse=T)
trains.T.b1<-Matrix(m_r_b1,sparse=T)


if (threads <= 8) {
  bst.a1<-xgboost(data = trains.T.a1,label = result$a1,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist'))
  bst.a2<-xgboost(data = trains.T.a2,label = result$a2,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist'))
  bst.a3<-xgboost(data = trains.T.a3,label = result$a3,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist'))
  bst.a4<-xgboost(data = trains.T.a4,label = result$a4,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist'))
  bst.a5<-xgboost(data = trains.T.a5,label = result$a5,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist'))
  bst.a6<-xgboost(data = trains.T.a6,label = result$a6,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist'))
  bst.b1<-xgboost(data = trains.T.b1,label = result$b1,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist'))
  
}else{
  bst.a1<-xgboost(data = trains.T.a1,label = result$a1,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist',nthread=number_of_core))
  bst.a2<-xgboost(data = trains.T.a2,label = result$a2,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist',nthread=number_of_core))
  bst.a3<-xgboost(data = trains.T.a3,label = result$a3,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist',nthread=number_of_core))
  bst.a4<-xgboost(data = trains.T.a4,label = result$a4,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist',nthread=number_of_core))
  bst.a5<-xgboost(data = trains.T.a5,label = result$a5,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist',nthread=number_of_core))
  bst.a6<-xgboost(data = trains.T.a6,label = result$a6,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist',nthread=number_of_core))
  bst.b1<-xgboost(data = trains.T.b1,label = result$b1,nrounds = 300,print_every_n = 300L,params = list(tree_method = 'hist',nthread=number_of_core))
  
}

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

#sum_l1_ab<-dcb_sum_L1(dcb)

#sum_l2_dcb_3
#sum_l2_dcb_6

#L2_1_dcb
#L2_2_dcb
#L2_3_dcb
#L2_4_dcb
#L2_5_dcb  
#L2_6_dcb
#L2_7_dcb
#L2_8_dcb

sum_l2<-c(max(dcb$n)+1,sum_l2_dcb)
m_r_ab_delta<-rbind(m_r_ab_org,sum_l2)
write.csv(m_r_ab_delta, file = "l2_ab.csv",row.names = FALSE)

c(max(dcb$n)+1,sum_L3_ab)

time_end_dcb<-Sys.time()
time_dur<-time_end_dcb-time_start_dcb
time_dur


#m_sum_l2_dcb

