result_check_JL_L6<-function(num) {
  library(sjmisc)
  data_result=dcb[which(dcb$n==num),]
  data_pre=as.data.frame(read.csv(file = "dcb_data_JL_L6.csv", header = FALSE))
  data_pre=data_pre[which(data_pre$V1==num),]
  m_record_CR=as.matrix(read.csv(file = "dcb_data_CR_JL_L6.csv", header = FALSE))[-1,]
  
  n_a=0
  n_b=0
  
  f_a=data_result[,2:7]%in%(as.integer(data_pre[,2:7]))
  fre_a=as.data.frame(table(data_result[,2:7]%in%(as.integer(data_pre[,2:7]))))
  n_a=sum(fre_a[which(fre_a$Var1=="TRUE"),"Freq"])
  
  if (data_result[,8]==as.integer(data_pre[,8])) {
    n_b=n_b+1;
  }
  
  
  
  if(n_a==6 && n_b==1) {
    sum_dcb<-c(num,"First",n_a,n_b,f_a)
  }else if(n_a==6) {
    sum_dcb<-c(num,"Second",n_a,n_b,f_a)
  }else if(n_a==5 && n_b==1) {
    sum_dcb<-c(num,"Third",n_a,n_b,f_a)
  }else if((n_a==4 && n_b==1) || (n_a==5)) {
    sum_dcb<-c(num,"Fourth",n_a,n_b,f_a)
  }else if((n_a==3 && n_b==1) || (n_a==4)) {
    sum_dcb<-c(num,"Fifth",n_a,n_b,f_a)
  }else if (n_b==1 || (n_a==1&&n_b==1) || ((n_a==2 && n_b==1))) {
    sum_dcb<-c(num,"Sixth",n_a,n_b,f_a)
  }else {
    sum_dcb<-c(num,"Zero",n_a,n_b,f_a)
  }
  
  
  
  print(sum_dcb,n_a,n_b)
  m_r_ab_delta<-rbind(m_record_CR,sum_dcb)
  write.csv(m_r_ab_delta, file = "dcb_data_CR_JL_L6.csv",row.names = FALSE)
}

