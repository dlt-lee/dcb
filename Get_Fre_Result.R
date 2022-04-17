source("element.R")

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
  L2_8_dcb      <-c(L2_8_dcb,    m_record_l2[i,1],m_record_l2[i,10],m_record_l2[i,20],m_record_l2[i,30],m_record_l2[i,40],m_record_l2[i,50],m_record_l2[i,60],m_record_l2[i,70])
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
#Convert to DF
Get_frame <- function(s) {
  m_temp<-matrix(s,ncol = 8,byrow = TRUE)
  n <-m_temp[,1]
  a1<-m_temp[,2]
  a2<-m_temp[,3]
  a3<-m_temp[,4]
  a4<-m_temp[,5]
  a5<-m_temp[,6]
  a6<-m_temp[,7]
  b1<-m_temp[,8]
  f<-data.frame(n,a1,a2,a3,a4,a5,a6,b1)
  return(f)
}
f_sum_l2_dcb_3<-Get_frame(sum_l2_dcb_3)
f_L2_1_dcb<-Get_frame(L2_1_dcb)
f_L2_2_dcb<-Get_frame(L2_2_dcb)
f_L2_3_dcb<-Get_frame(L2_3_dcb)
f_L2_4_dcb<-Get_frame(L2_4_dcb)
f_L2_5_dcb<-Get_frame(L2_5_dcb)
f_L2_6_dcb<-Get_frame(L2_6_dcb)
f_L2_7_dcb<-Get_frame(L2_7_dcb)
f_L2_8_dcb<-Get_frame(L2_8_dcb)
f_sum_l2_dcb_6<-Get_frame(sum_l2_dcb_6)
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
f_l16_dcb<-transform(f_l16_dcb,n=as.integer(n),a1=as.integer(a1),a2=as.integer(a2),a3=as.integer(a3),a4=as.integer(a4),a5=as.integer(a5),a6=as.integer(a6),b1=as.integer(b1))
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
# Get check result
f_ch_l2_1<-as.data.frame(read.csv(file = "dcb_data_CR_L2_1.csv"));f_ch_l2_1$V1<-as.integer(f_ch_l2_1$V1)
f_ch_l2_2<-as.data.frame(read.csv(file = "dcb_data_CR_L2_2.csv"));f_ch_l2_2$V1<-as.integer(f_ch_l2_2$V1)
f_ch_l2_3<-as.data.frame(read.csv(file = "dcb_data_CR_L2_3.csv"));f_ch_l2_3$V1<-as.integer(f_ch_l2_3$V1)
f_ch_l2_4<-as.data.frame(read.csv(file = "dcb_data_CR_L2_4.csv"));f_ch_l2_4$V1<-as.integer(f_ch_l2_4$V1)
f_ch_l2_5<-as.data.frame(read.csv(file = "dcb_data_CR_L2_5.csv"));f_ch_l2_5$V1<-as.integer(f_ch_l2_5$V1)
f_ch_l2_6<-as.data.frame(read.csv(file = "dcb_data_CR_L2_6.csv"));f_ch_l2_6$V1<-as.integer(f_ch_l2_6$V1)
f_ch_l2_sum_3<-as.data.frame(read.csv(file = "dcb_data_CR_L2_sum_3.csv"));f_ch_l2_sum_3$V1<-as.integer(f_ch_l2_sum_3$V1)
f_ch_l2_sum_6<-as.data.frame(read.csv(file = "dcb_data_CR_L2_sum_6.csv"));f_ch_l2_sum_6$V1<-as.integer(f_ch_l2_sum_6$V1)
f_ch_l3<-as.data.frame(read.csv(file = "dcb_data_CR_L3.csv"));f_ch_l3$V1<-as.integer(f_ch_l3$V1)
f_ch_l4<-as.data.frame(read.csv(file = "dcb_data_CR_L4.csv"));f_ch_l4$V1<-as.integer(f_ch_l4$V1)
f_ch_l5<-as.data.frame(read.csv(file = "dcb_data_CR_L5.csv"));f_ch_l5$V1<-as.integer(f_ch_l5$V1)
f_ch_l6<-as.data.frame(read.csv(file = "dcb_data_CR_L6.csv"));f_ch_l6$V1<-as.integer(f_ch_l6$V1)
f_ch_l7<-as.data.frame(read.csv(file = "dcb_data_CR_L7.csv"));f_ch_l7$V1<-as.integer(f_ch_l7$V1)
f_ch_l8<-as.data.frame(read.csv(file = "dcb_data_CR_L8.csv"));f_ch_l8$V1<-as.integer(f_ch_l8$V1)
f_ch_l9<-as.data.frame(read.csv(file = "dcb_data_CR_L9.csv"));f_ch_l9$V1<-as.integer(f_ch_l9$V1)
f_ch_l10<-as.data.frame(read.csv(file = "dcb_data_CR_L10.csv"));f_ch_l10$V1<-as.integer(f_ch_l10$V1)
f_ch_l11<-as.data.frame(read.csv(file = "dcb_data_CR_L11.csv"));f_ch_l11$V1<-as.integer(f_ch_l11$V1)
f_ch_l12<-as.data.frame(read.csv(file = "dcb_data_CR_L12.csv"));f_ch_l12$V1<-as.integer(f_ch_l12$V1)
f_ch_l13<-as.data.frame(read.csv(file = "dcb_data_CR_L13.csv"));f_ch_l13$V1<-as.integer(f_ch_l13$V1)
f_ch_l14<-as.data.frame(read.csv(file = "dcb_data_CR_L14.csv"));f_ch_l14$V1<-as.integer(f_ch_l14$V1)
f_ch_l15<-as.data.frame(read.csv(file = "dcb_data_CR_L15.csv"));f_ch_l15$V1<-as.integer(f_ch_l15$V1)
f_ch_l16<-as.data.frame(read.csv(file = "dcb_data_CR_L16.csv"));f_ch_l16$V1<-as.integer(f_ch_l16$V1)
f_ch_l17<-as.data.frame(read.csv(file = "dcb_data_CR_L17.csv"));f_ch_l17$V1<-as.integer(f_ch_l17$V1)
f_ch_l18<-as.data.frame(read.csv(file = "dcb_data_CR_L18.csv"));f_ch_l18$V1<-as.integer(f_ch_l18$V1)
f_ch_JL_l4<-as.data.frame(read.csv(file = "dcb_data_CR_JL_L4.csv"));f_ch_JL_l4$V1<-as.integer(f_ch_JL_l4$V1)
f_ch_JL_l5<-as.data.frame(read.csv(file = "dcb_data_CR_JL_L5.csv"));f_ch_JL_l5$V1<-as.integer(f_ch_JL_l5$V1)
f_ch_JL_l6<-as.data.frame(read.csv(file = "dcb_data_CR_JL_L6.csv"));f_ch_JL_l6$V1<-as.integer(f_ch_JL_l6$V1)
f_ch_JL_l7<-as.data.frame(read.csv(file = "dcb_data_CR_JL_L7.csv"));f_ch_JL_l7$V1<-as.integer(f_ch_JL_l7$V1)
f_ch_JL_l8<-as.data.frame(read.csv(file = "dcb_data_CR_JL_L8.csv"));f_ch_JL_l8$V1<-as.integer(f_ch_JL_l8$V1)
f_ch_JL_l9<-as.data.frame(read.csv(file = "dcb_data_CR_JL_L9.csv"));f_ch_JL_l9$V1<-as.integer(f_ch_JL_l9$V1)
f_ch_JL_l10<-as.data.frame(read.csv(file = "dcb_data_CR_JL_L10.csv"));f_ch_JL_l10$V1<-as.integer(f_ch_JL_l10$V1)
f_ch_JL_l11<-as.data.frame(read.csv(file = "dcb_data_CR_JL_L11.csv"));f_ch_JL_l11$V1<-as.integer(f_ch_JL_l11$V1)
f_ch_JL_l12<-as.data.frame(read.csv(file = "dcb_data_CR_JL_L12.csv"));f_ch_JL_l12$V1<-as.integer(f_ch_JL_l12$V1)
f_ch_JL_l13<-as.data.frame(read.csv(file = "dcb_data_CR_JL_L13.csv"));f_ch_JL_l13$V1<-as.integer(f_ch_JL_l13$V1)
f_ch_JL_l14<-as.data.frame(read.csv(file = "dcb_data_CR_JL_L14.csv"));f_ch_JL_l14$V1<-as.integer(f_ch_JL_l14$V1)
f_ch_JL_l15<-as.data.frame(read.csv(file = "dcb_data_CR_JL_L15.csv"));f_ch_JL_l15$V1<-as.integer(f_ch_JL_l15$V1)
f_ch_JL_l16<-as.data.frame(read.csv(file = "dcb_data_CR_JL_L16.csv"));f_ch_JL_l16$V1<-as.integer(f_ch_JL_l16$V1)
f_ch_JL_l17<-as.data.frame(read.csv(file = "dcb_data_CR_JL_L17.csv"));f_ch_JL_l17$V1<-as.integer(f_ch_JL_l17$V1)
f_ch_JL<-as.data.frame(read.csv(file = "dcb_data_CR_JL.csv"));f_ch_JL$V1<-as.integer(f_ch_JL$V1)
#Get result of prediction
Get_series <- function(Max_value,m,ma) {
  Temp_Result<-c()
  m=m+1
  if ("Fre_sum_l2_dcb_3" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_sum_l2_dcb_3[f_sum_l2_dcb_3$n==ma,m]))
  }
  if ("Fre_sum_l2_dcb_6" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_sum_l2_dcb_6[f_sum_l2_dcb_6$n==ma,m]))
  }
  if ("Fre_L2_1_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_L2_1_dcb[f_L2_1_dcb$n==ma,m]))
  }
  if ("Fre_L2_2_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_L2_2_dcb[f_L2_2_dcb$n==ma,m]))
  }
  if ("Fre_L2_3_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_L2_3_dcb[f_L2_3_dcb$n==ma,m]))
  }
  if ("Fre_L2_4_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_L2_4_dcb[f_L2_4_dcb$n==ma,m]))
  }
  if ("Fre_L2_5_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_L2_5_dcb[f_L2_5_dcb$n==ma,m]))
  }
  if ("Fre_L2_6_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_L2_6_dcb[f_L2_6_dcb$n==ma,m]))
  }
  if ("Fre_L2_7_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_L2_7_dcb[f_L2_7_dcb$n==ma,m]))
  }
  if ("Fre_L2_8_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_L2_8_dcb[f_L2_8_dcb$n==ma,m]))
  }
  if ("Fre_L3_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_l3_dcb[f_l3_dcb$n==ma,m]))
  }
  if ("Fre_L4_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_l4_dcb[f_l4_dcb$n==ma,m]))
  }
  if ("Fre_L5_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_l5_dcb[f_l5_dcb$n==ma,m]))
  }
  if ("Fre_L6_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_l6_dcb[f_l6_dcb$n==ma,m]))
  }
  if ("Fre_L7_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_l7_dcb[f_l7_dcb$n==ma,m]))
  }
  if ("Fre_L8_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_l8_dcb[f_l8_dcb$n==ma,m]))
  }
  if ("Fre_L9_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_l9_dcb[f_l9_dcb$n==ma,m]))
  }
  if ("Fre_L10_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_l10_dcb[f_l10_dcb$n==ma,m]))
  }
  if ("Fre_L11_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_l11_dcb[f_l11_dcb$n==ma,m]))
  }
  if ("Fre_L12_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_l12_dcb[f_l12_dcb$n==ma,m]))
  }
  if ("Fre_L13_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_l13_dcb[f_l13_dcb$n==ma,m]))
  }
  if ("Fre_L14_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_l14_dcb[f_l14_dcb$n==ma,m]))
  }
  if ("Fre_L15_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_l15_dcb[f_l15_dcb$n==ma,m]))
  }
  if ("Fre_L16_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_l16_dcb[f_l16_dcb$n==ma,m]))
  }
  if ("Fre_L17_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_l17_dcb[f_l17_dcb$n==ma,m]))
  }
  if ("Fre_L18_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_l18_dcb[f_l18_dcb$n==ma,m]))
  }
  if ("Fre_JL_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_JL_dcb[f_JL_dcb$n==ma,m]))
  }
  if ("Fre_JL_L4_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_JL_L4_dcb[f_JL_L4_dcb$n==ma,m]))
  }
  if ("Fre_JL_L5_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_JL_L5_dcb[f_JL_L5_dcb$n==ma,m]))
  }
  if ("Fre_JL_L6_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_JL_L6_dcb[f_JL_L6_dcb$n==ma,m]))
  }
  if ("Fre_JL_L7_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_JL_L7_dcb[f_JL_L7_dcb$n==ma,m]))
  }
  if ("Fre_JL_L8_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_JL_L8_dcb[f_JL_L8_dcb$n==ma,m]))
  }
  if ("Fre_JL_L9_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_JL_L9_dcb[f_JL_L9_dcb$n==ma,m]))
  }
  if ("Fre_JL_L10_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_JL_L10_dcb[f_JL_L10_dcb$n==ma,m]))
  }
  if ("Fre_JL_L11_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_JL_L11_dcb[f_JL_L11_dcb$n==ma,m]))
  }
  if ("Fre_JL_L12_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_JL_L12_dcb[f_JL_L12_dcb$n==ma,m]))
  }
  if ("Fre_JL_L13_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_JL_L13_dcb[f_JL_L13_dcb$n==ma,m]))
  }
  if ("Fre_JL_L14_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_JL_L14_dcb[f_JL_L14_dcb$n==ma,m]))
  }
  if ("Fre_JL_L15_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_JL_L15_dcb[f_JL_L15_dcb$n==ma,m]))
  }
  if ("Fre_JL_L16_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_JL_L16_dcb[f_JL_L16_dcb$n==ma,m]))
  }
  if ("Fre_JL_L17_dcb" %in% Max_value) {
    Temp_Result<-c(Temp_Result,as.integer(f_JL_L17_dcb[f_JL_L17_dcb$n==ma,m]))
  }
  return(Temp_Result)
}
#get count of a1~b1
Get_layer_fre <- function(mr) {
  f_t_a1<-as.data.frame(table(mr[,2]))
  f_t_a2<-as.data.frame(table(mr[,3]))
  f_t_a3<-as.data.frame(table(mr[,4]))
  f_t_a4<-as.data.frame(table(mr[,5]))
  f_t_a5<-as.data.frame(table(mr[,6]))
  f_t_a6<-as.data.frame(table(mr[,7]))
  f_t_b1<-as.data.frame(table(mr[,8]))
  
  t_tesut<-c(0,0,0,0,0,0,0)
  if (length(f_t_a1[f_t_a1$Var1==1,2]) !=0) {
    t_tesut[1]<-as.integer(f_t_a1[f_t_a1$Var1==1,2])
  }
  if (length(f_t_a2[f_t_a2$Var1==1,2]) != 0) {
    t_tesut[2]<-as.integer(f_t_a2[f_t_a2$Var1==1,2])
  }
  if (length(f_t_a3[f_t_a3$Var1==1,2]) != 0) {
    t_tesut[3]<-as.integer(f_t_a3[f_t_a3$Var1==1,2])
  }
  if (length(f_t_a4[f_t_a4$Var1==1,2]) != 0) {
    t_tesut[4]<-as.integer(f_t_a4[f_t_a4$Var1==1,2])
  }
  if (length(f_t_a5[f_t_a5$Var1==1,2]) != 0) {
    t_tesut[5]<-as.integer(f_t_a5[f_t_a5$Var1==1,2])
  }
  if (length(f_t_a6[f_t_a6$Var1==1,2]) != 0) {
    t_tesut[6]<-as.integer(f_t_a6[f_t_a6$Var1==1,2])
  }
  if (length(f_t_b1[f_t_b1$Var1==1,2]) != 0) {
    t_tesut[7]<-as.integer(f_t_b1[f_t_b1$Var1==1,2])
  }
  return(t_tesut)
}
#Get layer group Frequency
Get_layers_fre<-function(n,m) {
  mr_sum_l2_dcb_3<-data.matrix(tail(f_ch_l2_sum_3[f_ch_l2_sum_3$V1<=n,],m))
  mr_sum_l2_dcb_6<-data.matrix(tail(f_ch_l2_sum_6[f_ch_l2_sum_6$V1<=n,],m))
  mr_L2_1_dcb<-data.matrix(tail(f_ch_l2_1[f_ch_l2_1$V1<=n,],m))
  mr_L2_2_dcb<-data.matrix(tail(f_ch_l2_1[f_ch_l2_1$V1<=n,],m))
  mr_L2_3_dcb<-data.matrix(tail(f_ch_l2_1[f_ch_l2_1$V1<=n,],m))
  mr_L2_4_dcb<-data.matrix(tail(f_ch_l2_1[f_ch_l2_1$V1<=n,],m))
  mr_L2_5_dcb<-data.matrix(tail(f_ch_l2_1[f_ch_l2_1$V1<=n,],m))
  mr_L2_6_dcb<-data.matrix(tail(f_ch_l2_1[f_ch_l2_1$V1<=n,],m))
  mr_L2_7_dcb<-data.matrix(tail(f_ch_l2_1[f_ch_l2_1$V1<=n,],m))
  mr_L2_8_dcb<-data.matrix(tail(f_ch_l2_1[f_ch_l2_1$V1<=n,],m))
  mr_L3_dcb<-data.matrix(tail(f_ch_l3[f_ch_l3$V1<=n,],m))
  mr_L4_dcb<-data.matrix(tail(f_ch_l4[f_ch_l4$V1<=n,],m))
  mr_L5_dcb<-data.matrix(tail(f_ch_l5[f_ch_l5$V1<=n,],m))
  mr_L6_dcb<-data.matrix(tail(f_ch_l6[f_ch_l6$V1<=n,],m))
  mr_L7_dcb<-data.matrix(tail(f_ch_l7[f_ch_l7$V1<=n,],m))
  mr_L8_dcb<-data.matrix(tail(f_ch_l8[f_ch_l8$V1<=n,],m))
  mr_L9_dcb<-data.matrix(tail(f_ch_l9[f_ch_l9$V1<=n,],m))
  mr_L10_dcb<-data.matrix(tail(f_ch_l10[f_ch_l10$V1<=n,],m))
  mr_L11_dcb<-data.matrix(tail(f_ch_l11[f_ch_l11$V1<=n,],m))
  mr_L12_dcb<-data.matrix(tail(f_ch_l12[f_ch_l12$V1<=n,],m))
  mr_L13_dcb<-data.matrix(tail(f_ch_l13[f_ch_l13$V1<=n,],m))
  mr_L14_dcb<-data.matrix(tail(f_ch_l14[f_ch_l14$V1<=n,],m))
  mr_L15_dcb<-data.matrix(tail(f_ch_l15[f_ch_l15$V1<=n,],m))
  mr_L16_dcb<-data.matrix(tail(f_ch_l16[f_ch_l16$V1<=n,],m))
  mr_L17_dcb<-data.matrix(tail(f_ch_l17[f_ch_l17$V1<=n,],m))
  mr_L18_dcb<-data.matrix(tail(f_ch_l18[f_ch_l18$V1<=n,],m))
  mr_JL_dcb<-data.matrix(tail(f_ch_JL[f_ch_JL$V1<=n,],m))
  mr_JL_L4_dcb<-data.matrix(tail(f_ch_JL_l4[f_ch_JL_l4$V1<=n,],m))
  mr_JL_L5_dcb<-data.matrix(tail(f_ch_JL_l5[f_ch_JL_l5$V1<=n,],m))
  mr_JL_L6_dcb<-data.matrix(tail(f_ch_JL_l6[f_ch_JL_l6$V1<=n,],m))
  mr_JL_L7_dcb<-data.matrix(tail(f_ch_JL_l7[f_ch_JL_l7$V1<=n,],m))
  mr_JL_L8_dcb<-data.matrix(tail(f_ch_JL_l8[f_ch_JL_l8$V1<=n,],m))
  mr_JL_L9_dcb<-data.matrix(tail(f_ch_JL_l9[f_ch_JL_l9$V1<=n,],m))
  mr_JL_L10_dcb<-data.matrix(tail(f_ch_JL_l10[f_ch_JL_l10$V1<=n,],m))
  mr_JL_L11_dcb<-data.matrix(tail(f_ch_JL_l11[f_ch_JL_l11$V1<=n,],m))
  mr_JL_L12_dcb<-data.matrix(tail(f_ch_JL_l12[f_ch_JL_l12$V1<=n,],m))
  mr_JL_L13_dcb<-data.matrix(tail(f_ch_JL_l13[f_ch_JL_l13$V1<=n,],m))
  mr_JL_L14_dcb<-data.matrix(tail(f_ch_JL_l14[f_ch_JL_l14$V1<=n,],m))
  mr_JL_L15_dcb<-data.matrix(tail(f_ch_JL_l15[f_ch_JL_l15$V1<=n,],m))
  mr_JL_L16_dcb<-data.matrix(tail(f_ch_JL_l16[f_ch_JL_l16$V1<=n,],m))
  mr_JL_L17_dcb<-data.matrix(tail(f_ch_JL_l16[f_ch_JL_l17$V1<=n,],m))
  Fre_sum_l2_dcb_3<-Get_layer_fre(mr_sum_l2_dcb_3)
  Fre_sum_l2_dcb_6<-Get_layer_fre(mr_sum_l2_dcb_6)
  Fre_L2_1_dcb<-Get_layer_fre(mr_L2_1_dcb)
  Fre_L2_2_dcb<-Get_layer_fre(mr_L2_2_dcb)
  Fre_L2_3_dcb<-Get_layer_fre(mr_L2_3_dcb)
  Fre_L2_4_dcb<-Get_layer_fre(mr_L2_4_dcb)
  Fre_L2_5_dcb<-Get_layer_fre(mr_L2_5_dcb)
  Fre_L2_6_dcb<-Get_layer_fre(mr_L2_6_dcb)
  Fre_L2_7_dcb<-Get_layer_fre(mr_L2_7_dcb)
  Fre_L2_8_dcb<-Get_layer_fre(mr_L2_8_dcb)
  Fre_L3_dcb<-Get_layer_fre(mr_L3_dcb)
  Fre_L4_dcb<-Get_layer_fre(mr_L4_dcb)
  Fre_L5_dcb<-Get_layer_fre(mr_L5_dcb)
  Fre_L6_dcb<-Get_layer_fre(mr_L6_dcb)
  Fre_L7_dcb<-Get_layer_fre(mr_L7_dcb)
  Fre_L8_dcb<-Get_layer_fre(mr_L8_dcb)
  Fre_L9_dcb<-Get_layer_fre(mr_L9_dcb)
  Fre_L10_dcb<-Get_layer_fre(mr_L10_dcb)
  Fre_L11_dcb<-Get_layer_fre(mr_L11_dcb)
  Fre_L12_dcb<-Get_layer_fre(mr_L12_dcb)
  Fre_L13_dcb<-Get_layer_fre(mr_L13_dcb)
  Fre_L14_dcb<-Get_layer_fre(mr_L14_dcb)
  Fre_L15_dcb<-Get_layer_fre(mr_L15_dcb)
  Fre_L16_dcb<-Get_layer_fre(mr_L16_dcb)
  Fre_L17_dcb<-Get_layer_fre(mr_L17_dcb)
  Fre_L18_dcb<-Get_layer_fre(mr_L18_dcb)
  Fre_JL_dcb<-Get_layer_fre(mr_JL_dcb)
  Fre_JL_L4_dcb<-Get_layer_fre(mr_JL_L4_dcb)
  Fre_JL_L5_dcb<-Get_layer_fre(mr_JL_L5_dcb)
  Fre_JL_L6_dcb<-Get_layer_fre(mr_JL_L6_dcb)
  Fre_JL_L7_dcb<-Get_layer_fre(mr_JL_L7_dcb)
  Fre_JL_L8_dcb<-Get_layer_fre(mr_JL_L8_dcb)
  Fre_JL_L9_dcb<-Get_layer_fre(mr_JL_L9_dcb)
  Fre_JL_L10_dcb<-Get_layer_fre(mr_JL_L10_dcb)
  Fre_JL_L11_dcb<-Get_layer_fre(mr_JL_L11_dcb)
  Fre_JL_L12_dcb<-Get_layer_fre(mr_JL_L12_dcb)
  Fre_JL_L13_dcb<-Get_layer_fre(mr_JL_L13_dcb)
  Fre_JL_L14_dcb<-Get_layer_fre(mr_JL_L14_dcb)
  Fre_JL_L15_dcb<-Get_layer_fre(mr_JL_L15_dcb)
  Fre_JL_L16_dcb<-Get_layer_fre(mr_JL_L16_dcb)
  Fre_JL_L17_dcb<-Get_layer_fre(mr_JL_L17_dcb)
  fre_m=data.frame(Fre_sum_l2_dcb_3,Fre_sum_l2_dcb_6,
                   Fre_L2_1_dcb,
                   Fre_L2_2_dcb,
                   Fre_L2_3_dcb,
                   Fre_L2_4_dcb,
                   Fre_L2_5_dcb,
                   Fre_L2_6_dcb,
                   Fre_L2_7_dcb,
                   Fre_L2_8_dcb,
                   Fre_L3_dcb,
                   Fre_L4_dcb,
                   Fre_L5_dcb,
                   Fre_L6_dcb,
                   Fre_L7_dcb,
                   Fre_L8_dcb,
                   Fre_L9_dcb,
                   Fre_L10_dcb,
                   Fre_L11_dcb,
                   Fre_L12_dcb,
                   Fre_L13_dcb,
                   Fre_L14_dcb,
                   Fre_L15_dcb,
                   Fre_L16_dcb,
                   Fre_L17_dcb,
                   Fre_L18_dcb,
                   Fre_JL_dcb,
                   Fre_JL_L4_dcb,
                   Fre_JL_L5_dcb,
                   Fre_JL_L6_dcb,
                   Fre_JL_L7_dcb,
                   Fre_JL_L8_dcb,
                   Fre_JL_L9_dcb,
                   Fre_JL_L10_dcb,
                   Fre_JL_L11_dcb,
                   Fre_JL_L12_dcb,
                   Fre_JL_L13_dcb,
                   Fre_JL_L14_dcb,
                   Fre_JL_L15_dcb,
                   Fre_JL_L16_dcb,
                   Fre_JL_L17_dcb
                   
  )
  Max_a1=max(fre_m[1,])
  Max_a2=max(fre_m[2,])
  Max_a3=max(fre_m[3,])
  Max_a4=max(fre_m[4,])
  Max_a5=max(fre_m[5,])
  Max_a6=max(fre_m[6,])
  Max_b1=max(fre_m[7,])
  Max_a1=Max_a1[!duplicated(Max_a1)]
  Max_a2=Max_a2[!duplicated(Max_a2)]
  Max_a3=Max_a3[!duplicated(Max_a3)]
  Max_a4=Max_a4[!duplicated(Max_a4)]
  Max_a5=Max_a5[!duplicated(Max_a5)]
  Max_a6=Max_a6[!duplicated(Max_a6)]
  Max_b1=Max_b1[!duplicated(Max_b1)]
  
  print(c(m,Max_a1,Max_a2,Max_a3,Max_a4,Max_a5,Max_a6,Max_b1))
  return(fre_m)
}

get_element <- function(fre_m,m,ma) {
  f_ab<-c()
  M_ab=max(fre_m[m,])
  if (M_ab!=0) {
    name_ab=names(fre_m[1,][fre_m[m,] %in% M_ab])
    if (length(name_ab) != 0) {
      f_ab=Get_series(name_ab,m,ma)
      # f_ab=f_ab[!duplicated(f_ab)]
      f_ab=sort(f_ab)
      return(f_ab)
    }
  }
}
#Get prediction result of one round
Get_ab<-function(n){
  a1<-c();a2<-c();a3<-c();a4<-c();a5<-c();a6<-c();b1<-c()
  ab<-c()
  ma=n
  for (i in 1:284) {
    a1<-c(a1,get_element(Get_layers_fre(n,i),1,ma))
    a2<-c(a2,get_element(Get_layers_fre(n,i),2,ma))
    a3<-c(a3,get_element(Get_layers_fre(n,i),3,ma))
    a4<-c(a4,get_element(Get_layers_fre(n,i),4,ma))
    a5<-c(a5,get_element(Get_layers_fre(n,i),5,ma))
    a6<-c(a6,get_element(Get_layers_fre(n,i),6,ma))
    b1<-c(b1,get_element(Get_layers_fre(n,i),7,ma))
  }
  ab<-c(a1,a2,a3,a4,a5,a6)
  fre_ab<-as.data.frame(table((ab)))
  fre_b1<-as.data.frame(table(b1))
  out <- list(ab, b1)
  return(out)
}

#Get summary for one year
dcb_temp<-tail(dcb,151)
sum_ab<-c()
dcb_temp<-head(dcb_temp,150)
for (j in dcb_temp$n) {
  G_ab<-Get_ab((j))
  tab_a=data.frame(table(G_ab[1]))
  tab_b=data.frame(table(G_ab[2]))
  sum_a=sum( tab_a[tab_a$Var1%in%dcb[dcb$n==j,][2:7],]$Freq)
  sum_b=sum( tab_b[tab_b$Var1%in%dcb[dcb$n==j,][2:7],]$Freq)
  sum_ab=c(sum_ab,sum_a+sum_b)
}


















