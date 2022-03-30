source("element.R")
source("cycle.R")

# Prepare data L2
m_record_l2<-as.matrix(read.csv(file = "dcb_data_l2.csv", header = FALSE))[-1,]
Nu_row<-dim(m_record_l2)[1]
sum_l2_dcb_3  <-c()
L2_1_dcb      <-c()
L2_2_dcb      <-c()
L2_3_dcb      <-c()
L2_4_dcb      <-c()
L2_5_dcb      <-c()
L2_6_dcb      <-c()
L2_7_dcb      <-c()
L2_8_dcb      <-c()
sum_l2_dcb_6  <-c()
for(i in 1:Nu_row) {
  sum_l2_dcb_3  <-c(sum_l2_dcb_3,m_record_l2[i,1],m_record_l2[i,02],m_record_l2[i,12],m_record_l2[i,22],m_record_l2[i,32],m_record_l2[i,42],m_record_l2[i,52],m_record_l2[i,62])
  L2_1_dcb      <-c(L2_1_dcb,    m_record_l2[i,1],m_record_l2[i,03],m_record_l2[i,13],m_record_l2[i,23],m_record_l2[i,33],m_record_l2[i,43],m_record_l2[i,53],m_record_l2[i,63])
  L2_2_dcb      <-c(L2_2_dcb,    m_record_l2[i,1],m_record_l2[i,04],m_record_l2[i,14],m_record_l2[i,24],m_record_l2[i,34],m_record_l2[i,44],m_record_l2[i,54],m_record_l2[i,64])
  L2_3_dcb      <-c(L2_3_dcb,    m_record_l2[i,1],m_record_l2[i,05],m_record_l2[i,15],m_record_l2[i,25],m_record_l2[i,35],m_record_l2[i,45],m_record_l2[i,55],m_record_l2[i,65])
  L2_4_dcb      <-c(L2_4_dcb,    m_record_l2[i,1],m_record_l2[i,06],m_record_l2[i,16],m_record_l2[i,26],m_record_l2[i,36],m_record_l2[i,46],m_record_l2[i,56],m_record_l2[i,66])
  L2_5_dcb      <-c(L2_5_dcb,    m_record_l2[i,1],m_record_l2[i,07],m_record_l2[i,17],m_record_l2[i,27],m_record_l2[i,37],m_record_l2[i,47],m_record_l2[i,57],m_record_l2[i,67])
  L2_6_dcb      <-c(L2_6_dcb,    m_record_l2[i,1],m_record_l2[i,08],m_record_l2[i,18],m_record_l2[i,28],m_record_l2[i,38],m_record_l2[i,48],m_record_l2[i,58],m_record_l2[i,68])
  L2_7_dcb      <-c(L2_7_dcb,    m_record_l2[i,1],m_record_l2[i,09],m_record_l2[i,19],m_record_l2[i,29],m_record_l2[i,39],m_record_l2[i,49],m_record_l2[i,59],m_record_l2[i,69])
  L2_8_dcb      <-c(L2_8_dcb,    m_record_l2[i,1],m_record_l2[i,10],m_record_l2[i,10],m_record_l2[i,30],m_record_l2[i,40],m_record_l2[i,50],m_record_l2[i,60],m_record_l2[i,70])
  sum_l2_dcb_6  <-c(sum_l2_dcb_6,m_record_l2[i,1],m_record_l2[i,11],m_record_l2[i,21],m_record_l2[i,31],m_record_l2[i,41],m_record_l2[i,51],m_record_l2[i,61],m_record_l2[i,71])
}
sum_l2_dcb_3<-as.integer(sum_l2_dcb_3)
sum_l2_dcb_6<-as.integer(sum_l2_dcb_6)
L2_1_dcb<-as.integer(L2_1_dcb)
L2_2_dcb<-as.integer(L2_2_dcb)
L2_3_dcb<-as.integer(L2_3_dcb)
L2_4_dcb<-as.integer(L2_4_dcb)
L2_5_dcb<-as.integer(L2_5_dcb)
L2_6_dcb<-as.integer(L2_6_dcb)
L2_7_dcb<-as.integer(L2_7_dcb)
L2_8_dcb<-as.integer(L2_8_dcb)
m_sum_l2_dcb_3<-matrix(sum_l2_dcb_3,ncol = 8,byrow = TRUE)
n <-m_sum_l2_dcb_3[,1]
a1<-m_sum_l2_dcb_3[,2]
a2<-m_sum_l2_dcb_3[,3]
a3<-m_sum_l2_dcb_3[,4]
a4<-m_sum_l2_dcb_3[,5]
a5<-m_sum_l2_dcb_3[,6]
a6<-m_sum_l2_dcb_3[,7]
b1<-m_sum_l2_dcb_3[,8]
f_sum_l2_dcb_3<-data.frame(n,a1,a2,a3,a4,a5,a6,b1)
m_L2_1_dcb<-matrix(L2_1_dcb,ncol = 8,byrow = TRUE)
n <-m_L2_1_dcb[,1]
a1<-m_L2_1_dcb[,2]
a2<-m_L2_1_dcb[,3]
a3<-m_L2_1_dcb[,4]
a4<-m_L2_1_dcb[,5]
a5<-m_L2_1_dcb[,6]
a6<-m_L2_1_dcb[,7]
b1<-m_L2_1_dcb[,8]
f_L2_1_dcb<-data.frame(n,a1,a2,a3,a4,a5,a6,b1)
m_L2_2_dcb<-matrix(L2_2_dcb,ncol = 8,byrow = TRUE)
n <-m_L2_2_dcb[,1]
a1<-m_L2_2_dcb[,2]
a2<-m_L2_2_dcb[,3]
a3<-m_L2_2_dcb[,4]
a4<-m_L2_2_dcb[,5]
a5<-m_L2_2_dcb[,6]
a6<-m_L2_2_dcb[,7]
b1<-m_L2_2_dcb[,8]
f_L2_2_dcb<-data.frame(n,a1,a2,a3,a4,a5,a6,b1)
m_L2_3_dcb<-matrix(L2_3_dcb,ncol = 8,byrow = TRUE)
n <-m_L2_3_dcb[,1]
a1<-m_L2_3_dcb[,2]
a2<-m_L2_3_dcb[,3]
a3<-m_L2_3_dcb[,4]
a4<-m_L2_3_dcb[,5]
a5<-m_L2_3_dcb[,6]
a6<-m_L2_3_dcb[,7]
b1<-m_L2_3_dcb[,8]
f_L2_3_dcb<-data.frame(n,a1,a2,a3,a4,a5,a6,b1)
m_L2_4_dcb<-matrix(L2_4_dcb,ncol = 8,byrow = TRUE)
n <-m_L2_4_dcb[,1]
a1<-m_L2_4_dcb[,2]
a2<-m_L2_4_dcb[,3]
a3<-m_L2_4_dcb[,4]
a4<-m_L2_4_dcb[,5]
a5<-m_L2_4_dcb[,6]
a6<-m_L2_4_dcb[,7]
b1<-m_L2_4_dcb[,8]
f_L2_4_dcb<-data.frame(n,a1,a2,a3,a4,a5,a6,b1)
m_L2_5_dcb<-matrix(L2_5_dcb,ncol = 8,byrow = TRUE)
n <-m_L2_5_dcb[,1]
a1<-m_L2_5_dcb[,2]
a2<-m_L2_5_dcb[,3]
a3<-m_L2_5_dcb[,4]
a4<-m_L2_5_dcb[,5]
a5<-m_L2_5_dcb[,6]
a6<-m_L2_5_dcb[,7]
b1<-m_L2_5_dcb[,8]
f_L2_5_dcb<-data.frame(n,a1,a2,a3,a4,a5,a6,b1)
m_L2_6_dcb<-matrix(L2_6_dcb,ncol = 8,byrow = TRUE)
n <-m_L2_6_dcb[,1]
a1<-m_L2_6_dcb[,2]
a2<-m_L2_6_dcb[,3]
a3<-m_L2_6_dcb[,4]
a4<-m_L2_6_dcb[,5]
a5<-m_L2_6_dcb[,6]
a6<-m_L2_6_dcb[,7]
b1<-m_L2_6_dcb[,8]
f_L2_6_dcb<-data.frame(n,a1,a2,a3,a4,a5,a6,b1)
m_L2_7_dcb<-matrix(L2_7_dcb,ncol = 8,byrow = TRUE)
n <-m_L2_7_dcb[,1]
a1<-m_L2_7_dcb[,2]
a2<-m_L2_7_dcb[,3]
a3<-m_L2_7_dcb[,4]
a4<-m_L2_7_dcb[,5]
a5<-m_L2_7_dcb[,6]
a6<-m_L2_7_dcb[,7]
b1<-m_L2_7_dcb[,8]
f_L2_7_dcb<-data.frame(n,a1,a2,a3,a4,a5,a6,b1)
m_L2_8_dcb<-matrix(L2_8_dcb,ncol = 8,byrow = TRUE)
n <-m_L2_8_dcb[,1]
a1<-m_L2_8_dcb[,2]
a2<-m_L2_8_dcb[,3]
a3<-m_L2_8_dcb[,4]
a4<-m_L2_8_dcb[,5]
a5<-m_L2_8_dcb[,6]
a6<-m_L2_8_dcb[,7]
b1<-m_L2_8_dcb[,8]
f_L2_8_dcb<-data.frame(n,a1,a2,a3,a4,a5,a6,b1)
m_sum_l2_dcb_6<-matrix(sum_l2_dcb_6,ncol = 8,byrow = TRUE)
n <-m_sum_l2_dcb_6[,1]
a1<-m_sum_l2_dcb_6[,2]
a2<-m_sum_l2_dcb_6[,3]
a3<-m_sum_l2_dcb_6[,4]
a4<-m_sum_l2_dcb_6[,5]
a5<-m_sum_l2_dcb_6[,6]
a6<-m_sum_l2_dcb_6[,7]
b1<-m_sum_l2_dcb_6[,8]
f_sum_l2_dcb_6<-data.frame(n,a1,a2,a3,a4,a5,a6,b1)

# Prepare data L3-L18
f_l3_dcb<-as.data.frame(read.csv(file = "dcb_data_l3.csv"))
f_l4_dcb<-as.data.frame(read.csv(file = "dcb_data_l4.csv"))
f_l5_dcb<-as.data.frame(read.csv(file = "dcb_data_l5.csv"))
f_l6_dcb<-as.data.frame(read.csv(file = "dcb_data_l6.csv"))
f_l7_dcb<-as.data.frame(read.csv(file = "dcb_data_l7.csv"))
f_l8_dcb<-as.data.frame(read.csv(file = "dcb_data_l8.csv"))
f_l9_dcb<-as.data.frame(read.csv(file = "dcb_data_l9.csv"))
f_l10_dcb<-as.data.frame(read.csv(file = "dcb_data_l10.csv"))
f_l11_dcb<-as.data.frame(read.csv(file = "dcb_data_l11.csv"))
f_l12_dcb<-as.data.frame(read.csv(file = "dcb_data_l12.csv"))
f_l13_dcb<-as.data.frame(read.csv(file = "dcb_data_l13.csv"))
f_l14_dcb<-as.data.frame(read.csv(file = "dcb_data_l14.csv"))
f_l15_dcb<-as.data.frame(read.csv(file = "dcb_data_l15.csv"))
f_l16_dcb<-as.data.frame(read.csv(file = "dcb_data_l16.csv"))
f_l17_dcb<-as.data.frame(read.csv(file = "dcb_data_l17.csv"))
f_l18_dcb<-as.data.frame(read.csv(file = "dcb_data_l18.csv"))
f_JL_dcb<-as.data.frame(read.csv(file = "dcb_data_JL.csv"))
f_JL_L4_dcb<-as.data.frame(read.csv(file = "dcb_data_JL_L4.csv"))
f_JL_L5_dcb<-as.data.frame(read.csv(file = "dcb_data_JL_L5.csv"))
f_JL_L6_dcb<-as.data.frame(read.csv(file = "dcb_data_JL_L6.csv"))
f_JL_L7_dcb<-as.data.frame(read.csv(file = "dcb_data_JL_L7.csv"))
f_JL_L8_dcb<-as.data.frame(read.csv(file = "dcb_data_JL_L8.csv"))
f_JL_L9_dcb<-as.data.frame(read.csv(file = "dcb_data_JL_L9.csv"))
f_JL_L10_dcb<-as.data.frame(read.csv(file = "dcb_data_JL_L10.csv"))
f_JL_L11_dcb<-as.data.frame(read.csv(file = "dcb_data_JL_L11.csv"))
f_JL_L12_dcb<-as.data.frame(read.csv(file = "dcb_data_JL_L12.csv"))
f_JL_L13_dcb<-as.data.frame(read.csv(file = "dcb_data_JL_L13.csv"))
f_JL_L14_dcb<-as.data.frame(read.csv(file = "dcb_data_JL_L14.csv"))
f_JL_L15_dcb<-as.data.frame(read.csv(file = "dcb_data_JL_L15.csv"))
f_JL_L16_dcb<-as.data.frame(read.csv(file = "dcb_data_JL_L16.csv"))
f_JL_L17_dcb<-as.data.frame(read.csv(file = "dcb_data_JL_L17.csv"))
f_l3_dcb<-rename(f_l3_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_l4_dcb<-rename(f_l4_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_l5_dcb<-rename(f_l5_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_l6_dcb<-rename(f_l6_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_l7_dcb<-rename(f_l7_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_l8_dcb<-rename(f_l9_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_l9_dcb<-rename(f_l9_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_l10_dcb<-rename(f_l10_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_l11_dcb<-rename(f_l11_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_l12_dcb<-rename(f_l12_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_l13_dcb<-rename(f_l13_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_l14_dcb<-rename(f_l14_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_l15_dcb<-rename(f_l15_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_l16_dcb<-rename(f_l16_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_l17_dcb<-rename(f_l17_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_l18_dcb<-rename(f_l18_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_JL_dcb<-rename(f_JL_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_JL_L4_dcb<-rename(f_JL_L4_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_JL_L5_dcb<-rename(f_JL_L5_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_JL_L6_dcb<-rename(f_JL_L6_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_JL_L7_dcb<-rename(f_JL_L7_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_JL_L8_dcb<-rename(f_JL_L8_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_JL_L9_dcb<-rename(f_JL_L9_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_JL_L10_dcb<-rename(f_JL_L10_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_JL_L11_dcb<-rename(f_JL_L11_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_JL_L12_dcb<-rename(f_JL_L12_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_JL_L13_dcb<-rename(f_JL_L13_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_JL_L14_dcb<-rename(f_JL_L14_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_JL_L15_dcb<-rename(f_JL_L15_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_JL_L16_dcb<-rename(f_JL_L16_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_JL_L17_dcb<-rename(f_JL_L17_dcb,n=V1,a1=V2,a2=V3,a3=V4,a4=V5,a5=V6,a6=V7,b1=V8)
f_l3_dcb<-transform(f_l3_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_l4_dcb<-transform(f_l4_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_l5_dcb<-transform(f_l5_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_l6_dcb<-transform(f_l6_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_l7_dcb<-transform(f_l7_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_l8_dcb<-transform(f_l8_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_l9_dcb<-transform(f_l9_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_l10_dcb<-transform(f_l10_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_l11_dcb<-transform(f_l11_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_l12_dcb<-transform(f_l12_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_l13_dcb<-transform(f_l13_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_l14_dcb<-transform(f_l14_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_l15_dcb<-transform(f_l15_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_l16_dcb<-transform(f_l15_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_l17_dcb<-transform(f_l17_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_l18_dcb<-transform(f_l18_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_JL_dcb<-transform(f_JL_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_JL_L4_dcb<-transform(f_JL_L4_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_JL_L5_dcb<-transform(f_JL_L5_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_JL_L6_dcb<-transform(f_JL_L6_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_JL_L7_dcb<-transform(f_JL_L7_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_JL_L8_dcb<-transform(f_JL_L8_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_JL_L9_dcb<-transform(f_JL_L9_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_JL_L10_dcb<-transform(f_JL_L10_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_JL_L11_dcb<-transform(f_JL_L11_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_JL_L12_dcb<-transform(f_JL_L12_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_JL_L13_dcb<-transform(f_JL_L13_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_JL_L14_dcb<-transform(f_JL_L14_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_JL_L15_dcb<-transform(f_JL_L15_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_JL_L16_dcb<-transform(f_JL_L16_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
f_JL_L17_dcb<-transform(f_JL_L17_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))

ln=100
data_dcb<-tail(dcb[,1:8],ln)

r_sum_l2_dcb_3=c()
r_sum_l2_dcb_6=c()
r_L2_1_dcb=c()
r_L2_2_dcb=c()
r_L2_3_dcb=c()
r_L2_4_dcb=c()
r_L2_5_dcb=c()
r_L2_6_dcb=c()
r_L2_7_dcb=c()
r_L2_8_dcb=c()
r_L3_dcb=c()
r_L4_dcb=c()
r_L5_dcb=c()
r_L6_dcb=c()
r_L7_dcb=c()
r_L8_dcb=c()
r_L9_dcb=c()
r_L10_dcb=c()
r_L11_dcb=c()
r_L12_dcb=c()
r_L13_dcb=c()
r_L14_dcb=c()
r_L15_dcb=c()
r_L16_dcb=c()
r_L17_dcb=c()
r_L18_dcb=c()
r_JL_dcb=c()
r_JL_L4_dcb=c()
r_JL_L5_dcb=c()
r_JL_L6_dcb=c()
r_JL_L7_dcb=c()
r_JL_L8_dcb=c()
r_JL_L9_dcb=c()
r_JL_L10_dcb=c()
r_JL_L11_dcb=c()
r_JL_L12_dcb=c()
r_JL_L13_dcb=c()
r_JL_L14_dcb=c()
r_JL_L15_dcb=c()
r_JL_L16_dcb=c()
r_JL_L17_dcb=c()



for (k in data_dcb$n) {
  if (k==22001| k==21001) {
    break
  }
  r_sum_l2_dcb_3=c(r_sum_l2_dcb_3,f_sum_l2_dcb_3[f_sum_l2_dcb_3$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_sum_l2_dcb_3[f_sum_l2_dcb_3$n==k,8]%in%dcb[dcb$n==k,8])
  r_sum_l2_dcb_6=c(r_sum_l2_dcb_6,f_sum_l2_dcb_6[f_sum_l2_dcb_6$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_sum_l2_dcb_6[f_sum_l2_dcb_6$n==k,8]%in%dcb[dcb$n==k,8])
  r_L2_1_dcb=c(r_L2_1_dcb,f_L2_1_dcb[f_L2_1_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_L2_1_dcb[f_L2_1_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_L2_2_dcb=c(r_L2_2_dcb,f_L2_2_dcb[f_L2_1_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_L2_2_dcb[f_L2_2_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_L2_3_dcb=c(r_L2_3_dcb,f_L2_3_dcb[f_L2_1_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_L2_3_dcb[f_L2_3_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_L2_4_dcb=c(r_L2_4_dcb,f_L2_4_dcb[f_L2_1_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_L2_4_dcb[f_L2_4_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_L2_5_dcb=c(r_L2_5_dcb,f_L2_5_dcb[f_L2_1_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_L2_5_dcb[f_L2_5_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_L2_6_dcb=c(r_L2_6_dcb,f_L2_6_dcb[f_L2_1_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_L2_6_dcb[f_L2_6_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_L2_7_dcb=c(r_L2_7_dcb,f_L2_7_dcb[f_L2_1_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_L2_7_dcb[f_L2_7_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_L2_8_dcb=c(r_L2_8_dcb,f_L2_8_dcb[f_L2_1_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_L2_8_dcb[f_L2_8_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_L3_dcb=c(r_L3_dcb,f_l3_dcb[f_l3_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_l3_dcb[f_l3_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_L4_dcb=c(r_L4_dcb,f_l4_dcb[f_l4_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_l4_dcb[f_l4_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_L5_dcb=c(r_L5_dcb,f_l5_dcb[f_l5_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_l5_dcb[f_l5_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_L6_dcb=c(r_L6_dcb,f_l6_dcb[f_l6_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_l6_dcb[f_l6_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_L7_dcb=c(r_L7_dcb,f_l7_dcb[f_l7_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_l7_dcb[f_l7_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_L8_dcb=c(r_L8_dcb,f_l8_dcb[f_l8_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_l8_dcb[f_l8_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_L9_dcb=c(r_L9_dcb,f_l9_dcb[f_l9_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_l9_dcb[f_l9_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_L10_dcb=c(r_L10_dcb,f_l10_dcb[f_l10_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_l10_dcb[f_l10_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_L11_dcb=c(r_L11_dcb,f_l11_dcb[f_l11_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_l11_dcb[f_l10_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_L12_dcb=c(r_L12_dcb,f_l12_dcb[f_l12_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_l12_dcb[f_l10_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_L13_dcb=c(r_L13_dcb,f_l13_dcb[f_l13_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_l13_dcb[f_l10_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_L14_dcb=c(r_L14_dcb,f_l14_dcb[f_l14_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_l14_dcb[f_l10_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_L15_dcb=c(r_L15_dcb,f_l15_dcb[f_l15_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_l15_dcb[f_l10_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_L16_dcb=c(r_L16_dcb,f_l16_dcb[f_l16_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_l16_dcb[f_l10_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_L17_dcb=c(r_L17_dcb,f_l17_dcb[f_l17_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_l17_dcb[f_l10_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_L18_dcb=c(r_L18_dcb,f_l18_dcb[f_l18_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_l18_dcb[f_l10_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_JL_dcb=c(r_JL_dcb,f_JL_dcb[f_JL_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_JL_dcb[f_JL_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_JL_L4_dcb=c(r_JL_L4_dcb,f_JL_L4_dcb[f_JL_L4_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_JL_L4_dcb[f_JL_L4_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_JL_L5_dcb=c(r_JL_L5_dcb,f_JL_L5_dcb[f_JL_L5_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_JL_L5_dcb[f_JL_L5_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_JL_L6_dcb=c(r_JL_L6_dcb,f_JL_L6_dcb[f_JL_L6_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_JL_L6_dcb[f_JL_L6_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_JL_L7_dcb=c(r_JL_L7_dcb,f_JL_L7_dcb[f_JL_L7_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_JL_L7_dcb[f_JL_L7_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_JL_L8_dcb=c(r_JL_L8_dcb,f_JL_L8_dcb[f_JL_L8_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_JL_L8_dcb[f_JL_L8_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_JL_L9_dcb=c(r_JL_L9_dcb,f_JL_L9_dcb[f_JL_L9_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_JL_L9_dcb[f_JL_L9_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_JL_L10_dcb=c(r_JL_L10_dcb,f_JL_L10_dcb[f_JL_L10_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_JL_L10_dcb[f_JL_L10_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_JL_L11_dcb=c(r_JL_L11_dcb,f_JL_L11_dcb[f_JL_L11_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_JL_L11_dcb[f_JL_L11_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_JL_L12_dcb=c(r_JL_L12_dcb,f_JL_L12_dcb[f_JL_L12_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_JL_L12_dcb[f_JL_L12_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_JL_L13_dcb=c(r_JL_L13_dcb,f_JL_L13_dcb[f_JL_L13_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_JL_L13_dcb[f_JL_L13_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_JL_L14_dcb=c(r_JL_L14_dcb,f_JL_L14_dcb[f_JL_L14_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_JL_L14_dcb[f_JL_L14_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_JL_L15_dcb=c(r_JL_L15_dcb,f_JL_L14_dcb[f_JL_L15_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_JL_L15_dcb[f_JL_L15_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_JL_L16_dcb=c(r_JL_L16_dcb,f_JL_L14_dcb[f_JL_L16_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_JL_L16_dcb[f_JL_L16_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  r_JL_L17_dcb=c(r_JL_L17_dcb,f_JL_L14_dcb[f_JL_L17_dcb$n==k,2:7]%in%dcb[dcb$n==k,2:7],f_JL_L17_dcb[f_JL_L17_dcb$n==k,8]%in%dcb[dcb$n==k,8])
  
}

mr_sum_l2_dcb_3=matrix(r_sum_l2_dcb_3,ncol = 7,byrow = TRUE)
mr_sum_l2_dcb_6=matrix(r_sum_l2_dcb_6,ncol = 7,byrow = TRUE)
mr_L2_1_dcb=matrix(r_L2_1_dcb,ncol = 7,byrow = TRUE)
mr_L2_2_dcb=matrix(r_L2_2_dcb,ncol = 7,byrow = TRUE)
mr_L2_3_dcb=matrix(r_L2_3_dcb,ncol = 7,byrow = TRUE)
mr_L2_4_dcb=matrix(r_L2_4_dcb,ncol = 7,byrow = TRUE)
mr_L2_5_dcb=matrix(r_L2_5_dcb,ncol = 7,byrow = TRUE)
mr_L2_6_dcb=matrix(r_L2_6_dcb,ncol = 7,byrow = TRUE)
mr_L2_7_dcb=matrix(r_L2_7_dcb,ncol = 7,byrow = TRUE)
mr_L2_8_dcb=matrix(r_L2_8_dcb,ncol = 7,byrow = TRUE)
mr_L3_dcb=matrix(r_L3_dcb,ncol = 7,byrow = TRUE)
mr_L4_dcb=matrix(r_L4_dcb,ncol = 7,byrow = TRUE)
mr_L5_dcb=matrix(r_L5_dcb,ncol = 7,byrow = TRUE)
mr_L6_dcb=matrix(r_L6_dcb,ncol = 7,byrow = TRUE)
mr_L7_dcb=matrix(r_L7_dcb,ncol = 7,byrow = TRUE)
mr_L8_dcb=matrix(r_L8_dcb,ncol = 7,byrow = TRUE)
mr_L9_dcb=matrix(r_L9_dcb,ncol = 7,byrow = TRUE)
mr_L10_dcb=matrix(r_L10_dcb,ncol = 7,byrow = TRUE)
mr_L11_dcb=matrix(r_L11_dcb,ncol = 7,byrow = TRUE)
mr_L12_dcb=matrix(r_L12_dcb,ncol = 7,byrow = TRUE)
mr_L13_dcb=matrix(r_L13_dcb,ncol = 7,byrow = TRUE)
mr_L14_dcb=matrix(r_L14_dcb,ncol = 7,byrow = TRUE)
mr_L15_dcb=matrix(r_L15_dcb,ncol = 7,byrow = TRUE)
mr_L16_dcb=matrix(r_L16_dcb,ncol = 7,byrow = TRUE)
mr_L17_dcb=matrix(r_L17_dcb,ncol = 7,byrow = TRUE)
mr_L18_dcb=matrix(r_L18_dcb,ncol = 7,byrow = TRUE)
mr_JL_dcb=matrix(r_JL_dcb,ncol = 7,byrow = TRUE)
mr_JL_L4_dcb=matrix(r_JL_L4_dcb,ncol = 7,byrow = TRUE)
mr_JL_L5_dcb=matrix(r_JL_L5_dcb,ncol = 7,byrow = TRUE)
mr_JL_L6_dcb=matrix(r_JL_L6_dcb,ncol = 7,byrow = TRUE)
mr_JL_L7_dcb=matrix(r_JL_L7_dcb,ncol = 7,byrow = TRUE)
mr_JL_L8_dcb=matrix(r_JL_L8_dcb,ncol = 7,byrow = TRUE)
mr_JL_L9_dcb=matrix(r_JL_L9_dcb,ncol = 7,byrow = TRUE)
mr_JL_L10_dcb=matrix(r_JL_L10_dcb,ncol = 7,byrow = TRUE)
mr_JL_L11_dcb=matrix(r_JL_L11_dcb,ncol = 7,byrow = TRUE)
mr_JL_L12_dcb=matrix(r_JL_L12_dcb,ncol = 7,byrow = TRUE)
mr_JL_L13_dcb=matrix(r_JL_L13_dcb,ncol = 7,byrow = TRUE)
mr_JL_L14_dcb=matrix(r_JL_L14_dcb,ncol = 7,byrow = TRUE)
mr_JL_L15_dcb=matrix(r_JL_L15_dcb,ncol = 7,byrow = TRUE)
mr_JL_L16_dcb=matrix(r_JL_L16_dcb,ncol = 7,byrow = TRUE)
mr_JL_L17_dcb=matrix(r_JL_L17_dcb,ncol = 7,byrow = TRUE)


Get_Fre <- function(mr) {
  return(
    c(
      as.integer(table(mr[,1])[2]),
      as.integer(table(mr[,2])[2]),
      as.integer(table(mr[,3])[2]),
      as.integer(table(mr[,4])[2]),
      as.integer(table(mr[,5])[2]),
      as.integer(table(mr[,6])[2]),
      as.integer(table(mr[,7])[2]))
  )
}
Fre_sum_l2_dcb_3<-Get_Fre(mr_sum_l2_dcb_3)
Fre_sum_l2_dcb_6<-Get_Fre(mr_sum_l2_dcb_6)
Fre_L2_1_dcb<-Get_Fre(mr_L2_1_dcb)
Fre_L2_2_dcb<-Get_Fre(mr_L2_2_dcb)
Fre_L2_3_dcb<-Get_Fre(mr_L2_3_dcb)
Fre_L2_4_dcb<-Get_Fre(mr_L2_4_dcb)
Fre_L2_5_dcb<-Get_Fre(mr_L2_5_dcb)
Fre_L2_6_dcb<-Get_Fre(mr_L2_6_dcb)
Fre_L2_7_dcb<-Get_Fre(mr_L2_7_dcb)
Fre_L2_8_dcb<-Get_Fre(mr_L2_8_dcb)
Fre_L3_dcb<-Get_Fre(mr_L3_dcb)
Fre_L4_dcb<-Get_Fre(mr_L4_dcb)
Fre_L5_dcb<-Get_Fre(mr_L5_dcb)
Fre_L6_dcb<-Get_Fre(mr_L6_dcb)
Fre_L7_dcb<-Get_Fre(mr_L7_dcb)
Fre_L8_dcb<-Get_Fre(mr_L8_dcb)
Fre_L9_dcb<-Get_Fre(mr_L9_dcb)
Fre_L10_dcb<-Get_Fre(mr_L10_dcb)
Fre_L11_dcb<-Get_Fre(mr_L11_dcb)
Fre_L12_dcb<-Get_Fre(mr_L12_dcb)
Fre_L13_dcb<-Get_Fre(mr_L13_dcb)
Fre_L14_dcb<-Get_Fre(mr_L14_dcb)
Fre_L15_dcb<-Get_Fre(mr_L15_dcb)
Fre_L16_dcb<-Get_Fre(mr_L16_dcb)
Fre_L17_dcb<-Get_Fre(mr_L17_dcb)
Fre_L18_dcb<-Get_Fre(mr_L18_dcb)
Fre_JL_dcb<-Get_Fre(mr_JL_dcb)
Fre_JL_L4_dcb<-Get_Fre(mr_JL_L4_dcb)
Fre_JL_L5_dcb<-Get_Fre(mr_JL_L5_dcb)
Fre_JL_L6_dcb<-Get_Fre(mr_JL_L6_dcb)
Fre_JL_L7_dcb<-Get_Fre(mr_JL_L7_dcb)
Fre_JL_L8_dcb<-Get_Fre(mr_JL_L8_dcb)
Fre_JL_L9_dcb<-Get_Fre(mr_JL_L9_dcb)
Fre_JL_L10_dcb<-Get_Fre(mr_JL_L10_dcb)
Fre_JL_L11_dcb<-Get_Fre(mr_JL_L11_dcb)
Fre_JL_L12_dcb<-Get_Fre(mr_JL_L12_dcb)
Fre_JL_L13_dcb<-Get_Fre(mr_JL_L13_dcb)
Fre_JL_L14_dcb<-Get_Fre(mr_JL_L14_dcb)
Fre_JL_L15_dcb<-Get_Fre(mr_JL_L15_dcb)
Fre_JL_L16_dcb<-Get_Fre(mr_JL_L16_dcb)
Fre_JL_L17_dcb<-Get_Fre(mr_JL_L17_dcb)

fre_m=data.frame(Fre_sum_l2_dcb_3,Fre_sum_l2_dcb_6,Fre_L2_1_dcb,
                 Fre_L2_2_dcb,Fre_L2_3_dcb,Fre_L2_4_dcb,Fre_L2_5_dcb,
                 Fre_L2_7_dcb,Fre_L2_8_dcb,
                 Fre_L3_dcb,Fre_L4_dcb,Fre_L5_dcb,Fre_L6_dcb,Fre_L7_dcb,
                 Fre_L8_dcb,Fre_L8_dcb,Fre_L9_dcb,Fre_L10_dcb,Fre_L11_dcb,
                 Fre_L12_dcb,Fre_L13_dcb,Fre_L14_dcb,Fre_L15_dcb,
                 Fre_L16_dcb,Fre_L17_dcb,Fre_L18_dcb,
                 Fre_JL_dcb,
                 Fre_JL_L4_dcb,Fre_JL_L5_dcb,Fre_JL_L6_dcb,Fre_JL_L7_dcb,
                 Fre_JL_L8_dcb,Fre_JL_L9_dcb,Fre_JL_L10_dcb,Fre_JL_L11_dcb,
                 Fre_JL_L12_dcb,Fre_JL_L13_dcb,Fre_JL_L14_dcb,
                 Fre_JL_L15_dcb,Fre_JL_L16_dcb,Fre_JL_L17_dcb
                 
)
fre_m[is.na(fre_m)] <- 0

Max_a1=max(fre_m[1,])
Max_a2=max(fre_m[2,])
Max_a3=max(fre_m[3,])
Max_a4=max(fre_m[4,])
Max_a5=max(fre_m[5,])
Max_a6=max(fre_m[6,])
Max_b1=max(fre_m[7,])


Get_result <- function(Max_value) {
  if (Max_value=="Fre_sum_l2_dcb_3") {
    return(tail(f_sum_l2_dcb_3,1))
  }
  else if (Max_value=="Fre_sum_l2_dcb_6") {
    return(tail(f_sum_l2_dcb_6,1))
  }
  else if (Max_value=="Fre_L2_1_dcb") {
    return(tail(f_L2_1_dcb,1))
  }
  else if (Max_value=="Fre_L2_2_dcb") {
    return(tail(f_L2_2_dcb,1))
  }
  else if (Max_value=="Fre_L2_3_dcb") {
    return(tail(f_L2_3_dcb,1))
  }
  else if (Max_value=="Fre_L2_4_dcb") {
    return(tail(f_L2_4_dcb,1))
  }
  else if (Max_value=="Fre_L2_5_dcb") {
    return(tail(f_L2_5_dcb,1))
  }
  else if (Max_value=="Fre_L2_6_dcb") {
    return(tail(f_L2_6_dcb,1))
  }
  else if (Max_value=="Fre_L2_6_dcb") {
    return(tail(f_L2_6_dcb,1))
  }
  else if (Max_value=="Fre_L2_7_dcb") {
    return(tail(f_L2_7_dcb,1))
  }
  else if (Max_value=="Fre_L2_8_dcb") {
    return(tail(f_L2_8_dcb,1))
  }
  else if (Max_value=="Fre_L3_dcb") {
    return(tail(f_l3_dcb,1))
  }
  else if (Max_value=="Fre_L4_dcb") {
    return(tail(f_l4_dcb,1))
  }else if (Max_value=="Fre_L5_dcb") {
    return(tail(f_l5_dcb,1))
  }else if (Max_value=="Fre_L6_dcb") {
    return(tail(f_l6_dcb,1))
  }else if (Max_value=="Fre_L7_dcb") {
    return(tail(f_l7_dcb,1))
  }else if (Max_value=="Fre_L8_dcb") {
    return(tail(f_l8_dcb,1))
  }else if (Max_value=="Fre_L9_dcb") {
    return(tail(f_l9_dcb,1))
  }else if (Max_value=="Fre_L10_dcb") {
    return(tail(f_l10_dcb,1))
  }else if (Max_value=="Fre_L11_dcb") {
    return(tail(f_l11_dcb,1))
  }else if (Max_value=="Fre_L12_dcb") {
    return(tail(f_l12_dcb,1))
  }else if (Max_value=="Fre_L13_dcb") {
    return(tail(f_l13_dcb,1))
  }else if (Max_value=="Fre_L14_dcb") {
    return(tail(f_l14_dcb,1))
  }else if (Max_value=="Fre_L15_dcb") {
    return(tail(f_l15_dcb,1))
  }else if (Max_value=="Fre_L16_dcb") {
    return(tail(f_l16_dcb,1))
  }else if (Max_value=="Fre_L17_dcb") {
    return(tail(f_l17_dcb,1))
  }else if (Max_value=="Fre_L18_dcb") {
    return(tail(f_l18_dcb,1))
  }else if (Max_value=="Fre_JL_L4_dcb") {
    return(tail(f_JL_L4_dcb,1))
  }else if (Max_value=="Fre_JL_L5_dcb") {
    return(tail(f_JL_L5_dcb,1))
  }else if (Max_value=="Fre_JL_L6_dcb") {
    return(tail(f_JL_L6_dcb,1))
  }else if (Max_value=="Fre_JL_L7_dcb") {
    return(tail(f_JL_L7_dcb,1))
  }else if (Max_value=="Fre_JL_L8_dcb") {
    return(tail(f_JL_L8_dcb,1))
  }else if (Max_value=="Fre_JL_L9_dcb") {
    return(tail(f_JL_L9_dcb,1))
  }else if (Max_value=="Fre_JL_L10_dcb") {
    return(tail(f_JL_L10_dcb,1))
  }else if (Max_value=="Fre_JL_L11_dcb") {
    return(tail(f_JL_L11_dcb,1))
  }else if (Max_value=="Fre_JL_L12_dcb") {
    return(tail(f_JL_L12_dcb,1))
  }else if (Max_value=="Fre_JL_L13_dcb") {
    return(tail(f_JL_L13_dcb,1))
  }else if (Max_value=="Fre_JL_L14_dcb") {
    return(tail(f_JL_L14_dcb,1))
  }else if (Max_value=="Fre_JL_L15_dcb") {
    return(tail(f_JL_L15_dcb,1))
  }else if (Max_value=="Fre_JL_L16_dcb") {
    return(tail(f_JL_L16_dcb,1))
  }else if (Max_value=="Fre_JL_L17_dcb") {
    return(tail(f_JL_L17_dcb,1))
  }
}


f_a1=Get_result(names(fre_m[1,])[max.col(fre_m[1,])])
f_a2=Get_result(names(fre_m[1,])[max.col(fre_m[2,])])
f_a3=Get_result(names(fre_m[1,])[max.col(fre_m[3,])])
f_a4=Get_result(names(fre_m[1,])[max.col(fre_m[4,])])
f_a5=Get_result(names(fre_m[1,])[max.col(fre_m[5,])])
f_a6=Get_result(names(fre_m[1,])[max.col(fre_m[6,])])
f_b1=Get_result(names(fre_m[1,])[max.col(fre_m[7,])])


h_result=c(max(f_JL_L17_dcb$n),f_a1$a1,f_a2$a2,f_a3$a3,f_a4$a4,f_a5$a5,f_a6$a6,f_b1$b1)
print(h_result)
write.table(t(as.matrix(h_result,nrow(1))),file = "h_result.csv",append = TRUE,col.names = FALSE,row.names = FALSE,quote=TRUE, sep=",")

# write.xlsx(t(as.matrix(h_result,nrow(1))),file = "h_result.xlsx",append = TRUE,col.names = FALSE,row.names = FALSE)
# 





