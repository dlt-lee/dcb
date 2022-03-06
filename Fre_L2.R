source("element.R")
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
for (k in 22002:22023) {
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

Fre_sum_l2_dcb_3=c(
  as.integer(table(mr_sum_l2_dcb_3[,1])[2]),
  as.integer(table(mr_sum_l2_dcb_3[,2])[2]),
  as.integer(table(mr_sum_l2_dcb_3[,3])[2]),
  as.integer(table(mr_sum_l2_dcb_3[,4])[2]),
  as.integer(table(mr_sum_l2_dcb_3[,5])[2]),
  as.integer(table(mr_sum_l2_dcb_3[,6])[2]),
  as.integer(table(mr_sum_l2_dcb_3[,7])[2]))

Fre_sum_l2_dcb_6=c(
  as.integer(table(mr_sum_l2_dcb_6[,1])[2]),
  as.integer(table(mr_sum_l2_dcb_6[,2])[2]),
  as.integer(table(mr_sum_l2_dcb_6[,3])[2]),
  as.integer(table(mr_sum_l2_dcb_6[,4])[2]),
  as.integer(table(mr_sum_l2_dcb_6[,5])[2]),
  as.integer(table(mr_sum_l2_dcb_6[,6])[2]),
  as.integer(table(mr_sum_l2_dcb_6[,7])[2]))

Fre_L2_1_dcb=c(
  as.integer(table(mr_L2_1_dcb[,1])[2]),
  as.integer(table(mr_L2_1_dcb[,2])[2]),
  as.integer(table(mr_L2_1_dcb[,3])[2]),
  as.integer(table(mr_L2_1_dcb[,4])[2]),
  as.integer(table(mr_L2_1_dcb[,5])[2]),
  as.integer(table(mr_L2_1_dcb[,6])[2]),
  as.integer(table(mr_L2_1_dcb[,7])[2]))

Fre_L2_1_dcb=c(
  as.integer(table(mr_L2_1_dcb[,1])[2]),
  as.integer(table(mr_L2_1_dcb[,2])[2]),
  as.integer(table(mr_L2_1_dcb[,3])[2]),
  as.integer(table(mr_L2_1_dcb[,4])[2]),
  as.integer(table(mr_L2_1_dcb[,5])[2]),
  as.integer(table(mr_L2_1_dcb[,6])[2]),
  as.integer(table(mr_L2_1_dcb[,7])[2]))

Fre_L2_2_dcb=c(
  as.integer(table(mr_L2_2_dcb[,1])[2]),
  as.integer(table(mr_L2_2_dcb[,2])[2]),
  as.integer(table(mr_L2_2_dcb[,3])[2]),
  as.integer(table(mr_L2_2_dcb[,4])[2]),
  as.integer(table(mr_L2_2_dcb[,5])[2]),
  as.integer(table(mr_L2_2_dcb[,6])[2]),
  as.integer(table(mr_L2_2_dcb[,7])[2]))

Fre_L2_3_dcb=c(
  as.integer(table(mr_L2_3_dcb[,1])[2]),
  as.integer(table(mr_L2_3_dcb[,2])[2]),
  as.integer(table(mr_L2_3_dcb[,3])[2]),
  as.integer(table(mr_L2_3_dcb[,4])[2]),
  as.integer(table(mr_L2_3_dcb[,5])[2]),
  as.integer(table(mr_L2_3_dcb[,6])[2]),
  as.integer(table(mr_L2_3_dcb[,7])[2]))

Fre_L2_4_dcb=c(
  as.integer(table(mr_L2_4_dcb[,1])[2]),
  as.integer(table(mr_L2_4_dcb[,2])[2]),
  as.integer(table(mr_L2_4_dcb[,3])[2]),
  as.integer(table(mr_L2_4_dcb[,4])[2]),
  as.integer(table(mr_L2_4_dcb[,5])[2]),
  as.integer(table(mr_L2_4_dcb[,6])[2]),
  as.integer(table(mr_L2_4_dcb[,7])[2]))

Fre_L2_5_dcb=c(
  as.integer(table(mr_L2_5_dcb[,1])[2]),
  as.integer(table(mr_L2_5_dcb[,2])[2]),
  as.integer(table(mr_L2_5_dcb[,3])[2]),
  as.integer(table(mr_L2_5_dcb[,4])[2]),
  as.integer(table(mr_L2_5_dcb[,5])[2]),
  as.integer(table(mr_L2_5_dcb[,6])[2]),
  as.integer(table(mr_L2_5_dcb[,7])[2]))

Fre_L2_6_dcb=c(
  as.integer(table(mr_L2_6_dcb[,1])[2]),
  as.integer(table(mr_L2_6_dcb[,2])[2]),
  as.integer(table(mr_L2_6_dcb[,3])[2]),
  as.integer(table(mr_L2_6_dcb[,4])[2]),
  as.integer(table(mr_L2_6_dcb[,5])[2]),
  as.integer(table(mr_L2_6_dcb[,6])[2]),
  as.integer(table(mr_L2_6_dcb[,7])[2]))

Fre_L2_7_dcb=c(
  as.integer(table(mr_L2_7_dcb[,1])[2]),
  as.integer(table(mr_L2_7_dcb[,2])[2]),
  as.integer(table(mr_L2_7_dcb[,3])[2]),
  as.integer(table(mr_L2_7_dcb[,4])[2]),
  as.integer(table(mr_L2_7_dcb[,5])[2]),
  as.integer(table(mr_L2_7_dcb[,6])[2]),
  as.integer(table(mr_L2_7_dcb[,7])[2]))

Fre_L2_8_dcb=c(
  as.integer(table(mr_L2_8_dcb[,1])[2]),
  as.integer(table(mr_L2_8_dcb[,2])[2]),
  as.integer(table(mr_L2_8_dcb[,3])[2]),
  as.integer(table(mr_L2_8_dcb[,4])[2]),
  as.integer(table(mr_L2_8_dcb[,5])[2]),
  as.integer(table(mr_L2_8_dcb[,6])[2]),
  as.integer(table(mr_L2_8_dcb[,7])[2]))



fre_m=data.frame(Fre_sum_l2_dcb_3,Fre_sum_l2_dcb_6,
                 Fre_L2_1_dcb,
                 Fre_L2_2_dcb,
                 Fre_L2_3_dcb,
                 Fre_L2_4_dcb,
                 Fre_L2_5_dcb,
                 Fre_L2_6_dcb,
                 Fre_L2_7_dcb,
                 Fre_L2_8_dcb
                 )
fre_m[is.na(fre_m)] <- 0


print(c(tail(f_L2_3_dcb,1)$a1,
        tail(f_sum_l2_dcb_3,1)$a2,
        tail(f_L2_5_dcb,1)$a3,
        tail(f_L2_5_dcb,1)$a4,
        tail(f_L2_5_dcb,1)$a5,
        tail(f_L2_6_dcb,1)$a6,
        tail(f_L2_4_dcb,1)$b1))


next_n=max(as.integer(dcb$n))+1
pre_dcb=c(next_n,
         
         tail(f_L2_3_dcb,1)$a1,
         tail(f_sum_l2_dcb_3,1)$a1,
         
         L4[4],
         JL_L14[4],
         JL_L16[4],
         
         JL_L16[5],
         tail(f_L2_5_dcb,1)$a3,
         
         JL_L7[6],
         L13[5],
         
         JL_L10[7],
         JL_L9[7],
         
         tail(f_L2_6_dcb,1)$a6,
         tail(f_sum_l2_dcb_3,1)$a6,
         
         L16[9]
)

write.table(t(as.matrix(pre_dcb,nrow(1))),file = "pre_dcb.csv",append = TRUE,col.names = FALSE,row.names = FALSE,quote=TRUE, sep=",")

print(pre_dcb)

print(c(next_n,
  tail(f_L2_3_dcb,1)$a1,
        L4[4],
        JL_L16[5],tail(f_L2_5_dcb,1)$a3,
        JL_L7[6],
        JL_L10[7],
        tail(f_L2_6_dcb,1)$a6,
        L16[9]
))
        
