dcb_L2<-function(num,number_of_core) {
  library(HMM)
  library(depmixS4)
  library(matlab)
  library(quantmod)
  library(xgboost)
  #source("element.R")
  source("dcb_sum_L2.R")
  source("dcb_sum_L1.R")
  source("dcb_sum_cum.R")
  #read data
  m_record_l2<-as.matrix(read.csv(file = "dcb_data_l2.csv", header = FALSE))[-1,]
  #get training data
  dcb<-dcb[dcb$n<=num,]
  
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
  
  sum_l2<-c(max(dcb$n)+1,sum_l2_dcb)
  m_r_ab_delta<-rbind(m_r_ab_org,sum_l2)
  write.csv(m_r_ab_delta, file = "dcb_data_l2.csv",row.names = FALSE)

}