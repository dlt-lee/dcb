result_check<-function(num) {
  library(sjmisc)
  data_result=dcb[which(dcb$n==num),-1]
  data_pre=as.data.frame(read.csv(file = "dcb_data_JL.csv", header = FALSE))
  data_pre=data_pre[which(data_pre$V1==num),-1]
  m_record_CR=as.matrix(read.csv(file = "dcb_data_CR.csv", header = FALSE))
  
  n_a=0
  n_b=0
  
  for (i in 1:6) {
    if(data_result[,i]%in%a_pre[,1:6]) {
      n_a=n_a+1
    }
      
  }
  if (data_result[,7]==data_pre[,7]) {
    n_b=n_b+1
  }
  if (n_b==1 || (n_a==1&&n_b==1) || ((n_a==2 && n_b=1))) {
    sum_dcb<-c(num,"六等奖")
  }ifelse((n_a==3 && n_b==1) || n_a==4) {
    sum_dcb<-c(num,"五等奖")
  }ifelse((n_a==4 && n_b==1) || n_a==5) {
    sum_dcb<-c(num,"四等奖")
  }ifelse(n_a==5 && n_b==1) {
    sum_dcb<-c(num,"三等奖")
  }ifelse(n_a==6) {
    sum_dcb<-c(num,"二等奖")
  }ifelse(n_a=6 && n_b=1) {
    sum_dcb<-c(num,"一等奖")
  }
  print(sum_dcb)
  m_r_ab_delta<-rbind(m_record_CR,sum_JL_dcb)
  write.csv(m_r_ab_delta, file = "dcb_data_CR.csv",row.names = FALSE)
}