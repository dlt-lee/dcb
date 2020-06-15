library(HMM)
library(depmixS4)
library(matlab)
library(quantmod)
library(xgboost)
source("element.R")
source("dcb_sum_L2.R")
source("dcb_sum_L1.R")
source("dcb_sum_cum.R")

record_ab<-c(
  20050,04,02,09,05,07,08,
  11,10,10,08,11,09,
  11,11,15,15,16,12,
  19,13,17,22,25,14,
  21,24,18,23,27,20,
  24,24,33,29,32,21,
  10,07,09,09,05,05,
  20051,03,03,03,06,07,06,
  09,12,06,06,14,14,
  10,14,09,12,17,14,
  17,19,16,19,19,20,
  27,20,20,26,25,27,
  30,27,25,28,25,29,
  03,07,07,09,015,06
)

time_start<-Sys.time()

unit<-floor(dim(dcb)[1]/6/3)*3
L2_1<-dcb_sum_cum(dcb,unit*1)
L2_2<-dcb_sum_cum(dcb,unit*2)
L2_3<-dcb_sum_cum(dcb,unit*3)
L2_4<-dcb_sum_cum(dcb,unit*4)
L2_5<-dcb_sum_cum(dcb,unit*5)


sum_l2_ab<-dcb_sum_L2(dcb)
sum_l1_ab<-dcb_sum_L1(dcb)

time_end<-Sys.time()

sum_l2_ab

L2_1
L2_2
L2_3
L2_4
L2_5

time_dur<-time_end-time_start  
time_dur

c(sum_l2_ab[1],L2_1[1],L2_2[1],L2_3[1],L2_4[1],L2_5[1],
  sum_l2_ab[2],L2_1[2],L2_2[2],L2_3[2],L2_4[2],L2_5[2],
  sum_l2_ab[3],L2_1[3],L2_2[3],L2_3[3],L2_4[3],L2_5[3],
  sum_l2_ab[4],L2_1[4],L2_2[4],L2_3[4],L2_4[4],L2_5[4],
  sum_l2_ab[5],L2_1[5],L2_2[5],L2_3[5],L2_4[5],L2_5[5],
  sum_l2_ab[6],L2_1[6],L2_2[6],L2_3[6],L2_4[6],L2_5[6],
  sum_l2_ab[7],L2_1[7],L2_2[7],L2_3[7],L2_4[7],L2_5[7])

